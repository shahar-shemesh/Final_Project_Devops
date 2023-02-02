<%@ page errorPage="error.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
    <body>
	<div style="margin-left: auto;
    margin-right: auto;
  width: 40%;
  border: 10px solid #73AD21;
  font-family: Arial, Helvetica, sans-serif;
  padding: 25px 50px 75px 100px;">
		<H1>The result for <%=request.getParameter("a1")%></H1>
		<%
    Date date = new Date();
    SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss, ");
    String strDate = formatter.format(date);
  %>
  <p>received on <%= strDate %> is:</p>
        <%
            String num1=request.getParameter("t1");  
            String num2=request.getParameter("t2");  
  
            int i=Integer.parseInt(num1);  
            int j=Integer.parseInt(num2);  

            int k=0;
            String str=request.getParameter("a1");
            if(str.equals("Addition"))
                k=i+j;
            if(str.equals("Subtraction"))
                k=i-j;
            if(str.equals("Multiplication"))
                k=i*j;
            if(str.equals("Division"))
                k=i/j;
        %>
        <h2><%=k%></h2>
		<p><button type="button" name="back" onclick="history.back()">Back</button></p>
    </div>
	</body>
</html>