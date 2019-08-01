package com.sandra.certification.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet(name = "TurorialsController",
			urlPatterns = {    "/TarotMarseilleNiveau1/Introduction", "/TarotMarseilleNiveau1/Bateleur","/TarotMarseilleNiveau1/Papesse","/TarotMarseilleNiveau1/Imperatrice","/TarotMarseilleNiveau1/Empereur","/TarotMarseilleNiveau1/Pape","/TarotMarseilleNiveau1/Amoureux","/TarotMarseilleNiveau1/Chariot","/TarotMarseilleNiveau1/Justice","/TarotMarseilleNiveau1/Hermite","/TarotMarseilleNiveau1/RoueDeFortune","/TarotMarseilleNiveau1/Force","/TarotMarseilleNiveau1/Pendu","/TarotMarseilleNiveau1/ArcaneSansNom","/TarotMarseilleNiveau1/Temperance","/TarotMarseilleNiveau1/Diable","/TarotMarseilleNiveau1/MaisonDieu","/TarotMarseilleNiveau1/Etoile","/TarotMarseilleNiveau1/Lune","/TarotMarseilleNiveau1/Soleil","/TarotMarseilleNiveau1/Jugement","/TarotMarseilleNiveau1/Monde","/TarotMarseilleNiveau1/Mat",
								"/OracleGeNiveau1/Introduction",    			
								"/OracleBellineNiveau1/Introduction",					
								"/NumerologyNiveau1/Introduction",
								"/AstrologyNiveau1/Introduction",    
								"/ReferentielNiveau1/Introduction",  					
						
							})
public class TurorialsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String applicationContextPath = request.getContextPath();


					/*****************************************************************
					 * redirecting to tarot 
					 * 
					 * **************************************************************/
					if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Introduction")) {
								RequestDispatcher dispatcher = request
										.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Introduction.jsp");
								dispatcher.forward(request, response);		
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Bateleur")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Bateleur.jsp");
						dispatcher.forward(request, response);		
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Papesse")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Papesse.jsp");
						dispatcher.forward(request, response);	
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Imperatrice")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Imperatrice.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Empereur")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Empereur.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Pape")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Pape.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Amoureux")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Amoureux.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Chariot")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Chariot.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Justice")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Justice.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Hermite")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Hermite.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/RoueDeFortune")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1RoueDeFortune.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Force")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Force.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Pendu")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Pendu.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/ArcaneSansNom")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1ArcaneSansNom.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Temperance")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Temperance.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Diable")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Diable.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/MaisonDieu")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1MaisonDieu.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Etoile")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Etoile.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Lune")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Lune.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Soleil")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Soleil.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Jugement")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Jugement.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Monde")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Monde.jsp");
						dispatcher.forward(request, response);
					}else if (request.getRequestURI().equals(applicationContextPath + "/TarotMarseilleNiveau1/Mat")) {					
						RequestDispatcher dispatcher = request
								.getRequestDispatcher("/WEB-INF/jsps/tutorials/tarot/niveau1/tarotN1Mat.jsp");
						dispatcher.forward(request, response);
						
					/*****************************************************************
					 * redirecting to oracleGe
					 * 
					 * **************************************************************/
					}
								
					
						
								
					/*****************************************************************
				     * redirecting to oracleBelline
					 * 
					 * **************************************************************/
						
					/*****************************************************************
					 * redirecting to numerology
					 * 
					 * **************************************************************/

						
					/*****************************************************************
					 * redirecting to astrology
					 * 
					 * **************************************************************/
								
								
					/*****************************************************************
					 * redirecting to referentiel
					 * 
					* **************************************************************/
						
				

}
}
