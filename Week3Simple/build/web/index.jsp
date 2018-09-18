<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<html>
    <head>
        <link href="stylesheet.css" rel="stylesheet" type="text/css" media="all" /> 
    </head>
<body>
<a href="simple?message=This is a message">Simple Site</a>


    <form action = "responseForm.jsp" method = "GET" id="students">
    <fieldset>
        <legend>Please select the parameter you would like to search by:</legend>
        <input type = "radio" name = "parameter" value="Account Number"/>Account Number<br>
        <input type = "radio" name = "parameter"  value="Last Name"/>Last Name<br>
        <input type = "radio" name = "parameter" value="First Name"/>First Name<br>
        <input type = "radio" name = "parameter" value="E-Mail"/>E-Mail<br>
        <input type = "radio" name = "parameter" value="iPadDr"/>iPadDr<br>
    </fieldset>
    <input type = "text" name = "searchtext" placeholder="Search..."/>
    <input type = "submit" value = "Submit" />
</form>

</body>


</html>