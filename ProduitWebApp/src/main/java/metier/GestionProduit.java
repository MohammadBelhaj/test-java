package metier;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dao.Produit;

public class GestionProduit {
		private EntityManager em;
		
		public GestionProduit() {
			// TODO Auto-generated constructor stub
			EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProduitUP");  // houwa li kidir koulchi ajout supression... 
			em = emf.createEntityManager() ;
		}
		
		public void ajouterProduit(Produit produit ) {
			EntityTransaction tr = em.getTransaction();
			tr.begin();
			try {
				em.persist(produit);	
				tr.commit();
			}catch (Exception e)
			{
				e.printStackTrace();
				tr.rollback();
			}
		
		}
		
		public void modifierProduit(Produit produit) {
			EntityTransaction tr = em.getTransaction();
			tr.begin();
			try {
				Produit p = em.find(Produit.class, produit.getRef());
				if (p != null ) {
					em.merge(produit);
					tr.commit();
				}
				else System.out.println("produit introuvable !!! ");
			}catch (Exception e)
			{
				e.printStackTrace();
				tr.rollback();
			}
			
			
		}
		
		public void supprimerProduit(int ref ) {
			EntityTransaction tr = em.getTransaction();
			tr.begin();
			try {
				Produit p = em.find(Produit.class, ref);
				if (p != null ) {
					em.remove(p);
					tr.commit();
				}
				else System.out.println("produit introuvable !!");
			}catch (Exception e)
			{
				e.printStackTrace();
				tr.rollback();
			}
			
		}
		
		public Produit rechercherProduit (int ref) {
			return em.find(Produit.class, ref);
		}
		
		public List<Produit> listerProduit () {
			Query requete = em.createQuery("select p from Produit p ");
			return requete.getResultList();
		}
}
