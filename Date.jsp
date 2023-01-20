<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>JSP Timezone Example</title>
</head>
<body>

<h1>Current Date and Time in Different Time Zones</h1>

<%
    java.util.Calendar cal = java.util.Calendar.getInstance();

    // Set time zone to UTC
    java.util.TimeZone utcTZ = java.util.TimeZone.getTimeZone("UTC");
    cal.setTimeZone(utcTZ);
%>
<p>UTC: <%= cal.getTime() %></p>

<%
    // Set time zone to EST
    java.util.TimeZone estTZ = java.util.TimeZone.getTimeZone("EST");
    cal.setTimeZone(estTZ);
%>
<p>EST: <%= cal.getTime() %></p>

<%
    // Set time zone to IST
    java.util.TimeZone istTZ = java.util.TimeZone.getTimeZone("IST");
    cal.setTimeZone(istTZ);
%>
<p>IST: <%= cal.getTime() %></p>

</body>
</html>
