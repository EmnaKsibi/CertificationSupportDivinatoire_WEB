package com.sandra.certification;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.*;

import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;

import com.sandra.certification.CreateDOM;




public class Exam {
	Document dom;
	public int currentQuestion=0;
	public int totalNumberOfQuestions=0;
	public int quizDuration=0;
	public int quizMinScoreToPass;
	
	public Map<Integer,Integer> selections=new LinkedHashMap<Integer,Integer>();
	public ArrayList<QuizQuestion> questionList = new ArrayList<QuizQuestion>();
	
	public Exam(String test) throws SAXException,ParserConfigurationException,IOException, URISyntaxException{
		
		dom=CreateDOM.getDOM(test);
		totalNumberOfQuestions = Integer.parseInt(dom.getElementsByTagName("totalQuizQuestions").item(0).getTextContent());
		quizDuration = Integer.parseInt(dom.getElementsByTagName("quizDuration").item(0).getTextContent());
		quizMinScoreToPass = Integer.parseInt(dom.getElementsByTagName("quizMinScoreToPass").item(0).getTextContent());
		
		System.out.println("[InfoEx] Document Title *"+dom.getElementsByTagName("title").item(0).getTextContent()+"*");

		

	}
	
		
	public void setQuestion(int i)
	{   int number=i;
		String options[]=new String[4];
	    String question=null;
	    int correct=0;

		NodeList qList=dom.getElementsByTagName("question");
	    NodeList childList=qList.item(i).getChildNodes();
	    
	    int counter=0;
	    
	    for (int j = 0; j < childList.getLength(); j++) {
            Node childNode = childList.item(j);
            if ("answer".equals(childNode.getNodeName()))
            {
                options[counter]=childList.item(j).getTextContent();
                counter++;
            }
            else if("quizquestion".equals(childNode.getNodeName()))
            {
            	question=childList.item(j).getTextContent();
            }
            else if("correct".equals(childNode.getNodeName()))
            {
            	correct=Integer.parseInt(childList.item(j).getTextContent());
            }
            
        }
	    //System.out.println("InfoEx : Retrieving Question Number "+number);
		//System.out.println("InfoEx : Question is : "+question);
		for(String a:options)
		{
			//System.out.println("InfoEx : Question Option : "+a);
		}
		
		
		QuizQuestion q=new QuizQuestion();
		q.setQuestionNumber(number);
		q.setQuestion(question);
		q.setCorrectOptionIndex(correct);
		q.setQuestionOptions(options);
		questionList.add(number,q);
		
	}
	
	
	public ArrayList<QuizQuestion> getQuestionList(){
		return this.questionList;
	}
	
	public int getCurrentQuestion(){return currentQuestion;}
	
	public Map<Integer,Integer> getSelections(){
		return this.selections;
	}
	
	public int calculateResult(Exam exam){
		int totalCorrect=0;
		Map<Integer,Integer> userSelectionsMap=exam.selections;		
		List<Integer> userSelectionsList=new ArrayList<Integer>();
		for (Map.Entry<Integer, Integer> entry :userSelectionsMap.entrySet()) {
			userSelectionsList.add(entry.getValue());
		}
		List<QuizQuestion> questionList=exam.questionList;
		List<Integer> correctAnswersList=new ArrayList<Integer>();
		for(QuizQuestion question: questionList){
			correctAnswersList.add(question.getCorrectOptionIndex());
		}
		
		for(int i=0;i<selections.size();i++){
			System.out.println("[InfoEx] User Selected *"+(userSelectionsList.get(i)-1)+"* correctAnswer *"+correctAnswersList.get(i)+"*");
			if((userSelectionsList.get(i)-1)==correctAnswersList.get(i)){
				totalCorrect++;
			}
		}
		
		System.out.println("[InfoEX] You Got "+totalCorrect+" Correct" +" ou of "+totalNumberOfQuestions);	
		return totalCorrect;
	}
	
	

	
}
