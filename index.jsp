<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mathematical Operation</title>
</head>
<body>
	<form method="post" action="result.jsp">
		<fieldset style="margin-left: auto; margin-right: auto; width: 40%; border: 10px solid #73AD21; font-family: Arial, Helvetica, sans-serif; padding: 25px 50px 75px 100px;">
			<h1>
				<font size=8 face="Arial">MAAAthematical Operation</font>
			</h1>
			<hr>
			<input type="radio" name="a1" value="Addition" checked>Addition</input><br>
			<input type="radio" name="a1" value="Subtraction">Subtraction</input><br>
			<input type="radio" name="a1" value="Multiplication">Multiplication</input><br>
			<input type="radio" name="a1" value="Division">Division</input><br>
			<table>
				<tr>
					<td>Enter first Value: </td>
					<td><input type="text" name="t1" value=""></td>
				</tr>
				<tr>
					<td>Enter second Value: </td>
					<td><input type="text" name="t2" value=""></td>
				</tr>
				<br>
				<tr>
					<td></td>
					<td><br />
						<input type="submit" name="result" value="Check result!"></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>
