package com.j.qsng.common.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;
 
/**
 */
public class PropertyUtil {
     
  
	Properties pro;
	
	
    public PropertyUtil(String path) {
    	pro = new Properties();

    	InputStream inStr = ClassLoader.getSystemResourceAsStream(path);
        try {
			pro.load(inStr);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

    public List<String> getAllNamesValue(){
    	List<String> list  = new ArrayList<String>();
    	Enumeration enu2=pro.elements();
    	while(enu2.hasMoreElements()){
    	    String value = (String)enu2.nextElement();
    	    list.add(value);
    	} 
    	return list;

    }

	public static void main(String[] args) {
		PropertyUtil pro = new PropertyUtil("resource/test.properties");
		List<String> list = pro.getAllNamesValue();
		for(int i=0;i<list.size();i++){
			System.out.println(list.get(i));
		}
    	
    //	URL  url=PropertyUtil.class.getClassLoader().getResource("resource/test.properties");
    	

    //	PropertyUtil.setProperty("src/main/resources/resource","test.properties","bsurls","https://adjaldjals.com");
    }
     
}
