<%--
  Created by IntelliJ IDEA.
  User: dungnguyen
  Date: 4/9/24
  Time: 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Murach's Java Servlets and JSP</title>
  <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>
<h1>Thanks for joining our email list</h1>
<p>Here is the information that you entered:</p>

<label>Email:</label>
<span>${user.email}</span><br>

<label>First Name:</label>
<span>${user.firstName}</span><br>

<label>Last Name:</label>
<span>${user.lastName}</span><br>

<label>Date of birth:</label>
<span>${user.dateOfBirth}</span><br>

<h1>How did you hear about us?</h1>
<span>${hearUs}</span>

<h1>Would you like to receive announcements about new CDs d special offers ?</h1>
<span>${checkBox1}</span><br>

<span>${checkBox2}</span> <br>
contact you by: <span>${contactMethod}</span>

<form action="emailList" method="post">
  <input type="hidden" name="action" value="join">
  <input type="submit" value="Return">
</form>
</body>
</html>

