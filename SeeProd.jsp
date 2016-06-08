
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Read Text</title>
</head>

<title>Insert title here</title>
</head>
<table border="1">
<%	
	String line;
	int x=0;
	try {
    FileReader reader = new FileReader("C:\\Users\\Rahul.Thakur\\workspace\\ReleaseJSP\\WebContent\\MyFile.txt");
    BufferedReader bufferedReader = new BufferedReader(reader);

    while ((line = bufferedReader.readLine()) != null) {
    	DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1); 
        
        //System.out.println(dateFormat.format(cal.getTime()));
    	if(line.endsWith(dateFormat.format(cal.getTime())))
    	{
    		StringBuilder sb= new StringBuilder();
    		//String line1;
    		sb.append(line+"<br>");
    		out.println(sb.toString());
    		
    		/*
    		int i=0;
    		
    		String arr[]={null,null,null,null};
    		 System.out.println("Return Value :" );
    	      for (String retval: line.split("\t")){
    	    	  arr[i]=retval;
    	    	  i++;
    	         System.out.println(retval);
  
    	      }*/
    	      
    	}
    	/*for(int j=0;j<=3;j++)
    	{
    		out.print("<\t>"+arr[j]+ "<br>" );
    	}
    	*/
    }
	}
    catch (IOException e) {
        e.printStackTrace();
    }
	
%>
</table>
<body>
</body>
</html>