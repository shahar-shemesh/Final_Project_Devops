<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title> Timezone   - Devops Final Project</title>
</head>
<body>

<h1>in Different Time Zones</h1>

<p id="UTC"></p>
<p id="EST"></p>
<p id="IST"></p>

<%
    java.util.Calendar utcCalendar = java.util.Calendar.getInstance(java.util.TimeZone.getTimeZone("UTC"));
    java.util.Calendar estCalendar = java.util.Calendar.getInstance(java.util.TimeZone.getTimeZone("EST"));
    java.util.Calendar istCalendar = java.util.Calendar.getInstance(java.util.TimeZone.getTimeZone("IST"));
    
    java.text.SimpleDateFormat dateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX");
    String utcDate = dateFormat.format(utcCalendar.getTime());
    String estDate = dateFormat.format(estCalendar.getTime());
    String istDate = dateFormat.format(istCalendar.getTime());
%>

<script>
    var utc = new Date("<%= utcDate %>");
    var est = new Date("<%= estDate %>");
    var ist = new Date("<%= istDate %>");

    var options = { timeZone: 'UTC', timeZoneName: 'short' };
    document.getElementById("UTC").innerHTML = "UTC: " + utc.toLocaleString('en-US', options);

    options = { timeZone: 'America/New_York', timeZoneName: 'short' };
    document.getElementById("EST").innerHTML = "EST: " + est.toLocaleString('en-US', options);

    options = { timeZone: 'Asia/Kolkata', timeZoneName: 'short' };
    document.getElementById("IST").innerHTML = "IST: " + ist.toLocaleString('en-US', options);
</script>
</body>
</html>
