package com.sandra.certification;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URISyntaxException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.xml.sax.SAXException;


public class CreateDOM {
	
	
	public static Document getDOM(String test) throws SAXException,ParserConfigurationException,IOException, URISyntaxException
	{
		    Document dom=null;
		    File quizFile=null;
		    
		    //Quiz path for work
	       quizFile=new File("/Users/sandra/Desktop/Sandra/eclipse/eclipse-workspace/CertificationSupportDivinatoire/WebContent/quizzes/"+test+".xml");
	       
		    //Quiz path for my home pc ! DELL 
	        //quizFile=new File("/Users/DELL/Desktop/EMNA/eclipse/eclipse-workspace/CertificationSupportDivinatoire/WebContent/quizzes/"+test+".xml");
	        
	       //Quiz path for my home pc ! asus
	       //quizFile=new File("D:/Programmation/Eclipse/eclipse-workspace/CertificationSupportDivinatoire/WebContent/quizzes/"+test+".xml");

	        System.out.println("[InfoDOM] Quiz File Absolute Path "+quizFile.getAbsolutePath());
	         
	   DocumentBuilderFactory dbf=DocumentBuilderFactory.newInstance();
	   DocumentBuilder db=dbf.newDocumentBuilder();
	   try{
	        dom=db.parse(quizFile);
	   }catch(FileNotFoundException fileNotFound){
		   System.err.println("[ErrorDOM] Quiz File Not Found "+fileNotFound);
	   }
	   dom.getDocumentElement().normalize();

	   return dom;
	}

}
