<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="style.css" type="text/css"/>
</head>
<body>

<img src="https://th.bing.com/th/id/OIP.1aO69esCwI4bPvIQu5dWHQHaHa?rs=1&pid=ImgDetMain" style="
 width: 100px; height: 100px;"/>

<h1>Survey</h1>
<p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>

<form action="emailList" method="post">



    <h1>Your information</h1>
    <input type="hidden" name="action" value="add">
    <label>Email:</label>
    <input type="email" name="email" required><br>
    <label>First Name:</label>
    <input type="text" name="firstName" required><br>
    <label>Last Name:</label>
    <input type="text" name="lastName" required><br>
    <label>Date of birth:</label>
    <input type="date" name="date" required id = "date"><br>


    <h1>How did you hear about us?</h1>
    <input type="radio" name = "radioInput" value="Search engine">Search engine
    <input type="radio" name = "radioInput" value="Word of mouth">Word of mouth
    <input type="radio" name = "radioInput" value="Social Media">Social Media
    <input type="radio" name = "radioInput" value="Other">Other





    <h1>Would you like to receive announcements about new CDs d special offers ?</h1>
    <input type = "checkbox" name="checkBox1">Yes I'd like that. <br>
    <input type = "checkbox" name="checkBox2">Yes, please send me email announcements <br><br>

    Please contact me by:
    <select name="contact-me-by">
        <option value="Email or postal mail" selected> Email or postal mail</option>
        <option value="Email" > Email</option>
        <option value="postal mail" >postal mail</option>

    </select> <br>

    <input type="submit" value="Join Now" id="submit">
</form>
</body>
</html>
