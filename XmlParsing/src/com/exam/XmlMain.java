package com.exam;

import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XmlMain {

	public static void main(String[] args) throws ParserConfigurationException, SAXException, IOException {
		System.out.println("Hello");
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
		
			DocumentBuilder builder = factory.newDocumentBuilder();
			Document doc = builder.parse("data.xml");
			NodeList foodList = doc.getElementsByTagName("food");
			for (int i = 0; i < foodList.getLength(); i++) {
				Element element = (Element)foodList.item(i);
		        System.out.println(element.getNodeName());
				Node p = foodList.item(i);
				if (p.getNodeType() == Node.ELEMENT_NODE) {
					Element food  = (Element) p;
					NodeList nameFood = food.getChildNodes();
					for (int j = 0; j < nameFood.getLength(); j++) {
						Node n = nameFood.item(j);
						if (n.getNodeType() == Node.ELEMENT_NODE) {
							Element name = (Element) n;
							System.out.println("Food Name --> "+ name.getTextContent());
						}
					}
				}
			}
		
	}

}
