package presentation;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Produit;
import metier.GestionProduit;

public class ProduitController extends HttpServlet   {

 private GestionProduit gestionproduit; 
 @Override
	public void init() throws ServletException {
	gestionproduit = new GestionProduit();
		
	}
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Produit> produits = gestionproduit.listerProduit();
		req.setAttribute("listproduit", produits);
		req.getRequestDispatcher("index.jsp").forward(req,resp);
		}
	}
	
	                                                                                                                            