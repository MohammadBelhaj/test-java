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
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("ProduitUP"); // Ensure "ProduitUP" is the correct persistence unit name in your persistence.xml
		em = emf.createEntityManager();
	}

	public void ajouterProduit(Produit produit) {
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			em.persist(produit);
			tr.commit();
		} catch (Exception e) {
			if (tr.isActive()) {
				tr.rollback();
			}
			e.printStackTrace(); // Or handle more gracefully
		}
	}

	public void modifierProduit(Produit produit) {

	}

	public void supprimerProduit(int ref) { // Parameter is int, matching find() below
		EntityTransaction tr = em.getTransaction();
		try {
			tr.begin();
			Produit p = em.find(Produit.class, ref); // Find by primary key type (Integer for ref)
			if (p != null) {
				em.remove(p);
				tr.commit();
			} else {
				System.out.println("Produit introuvable pour suppression (réf : " + ref + ")");
			}
		} catch (Exception e) {
			if (tr.isActive()) {
				tr.rollback();
			}
			e.printStackTrace();
		}
	}

	public Produit rechercherProduit(int ref) { // Parameter is int
		return em.find(Produit.class, ref); // Find by primary key type (Integer for ref)
	}

	@SuppressWarnings("unchecked") // To suppress warning for getResultList() without generic type
	public List<Produit> listerProduit() {
		Query requete = em.createQuery("SELECT p FROM Produit p");
		return requete.getResultList();
	}

	// It's good practice to provide a method to close the EntityManager when GestionProduit is no longer needed
	public void close() {
		if (em != null && em.isOpen()) {
			em.close();
		}
		// If you also store EntityManagerFactory as a member, close it too,
		// but typically EMF is application-scoped and closed on application shutdown.
	}
}