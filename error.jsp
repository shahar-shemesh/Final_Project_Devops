<%@ page isErrorPage="true" %>  
<div style="margin-left: auto;
    margin-right: auto;
  width: 40%;
  border: 10px solid #73AD21;
  padding: 25px 50px 75px 100px;">

<font size=5 face="Arial"><h1>Sorry,<br/> an exception occured!</h1></font>
  
<font size=3 face="Arial">Exception is: <br/></font><br/><%= exception %>
<br/><br/>
<p><button type="button" name="back" onclick="history.back()">Back</button></p>

</div>