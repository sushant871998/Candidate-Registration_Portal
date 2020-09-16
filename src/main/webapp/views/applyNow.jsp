<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="apply" method="post">
<label>First Name</label><input type="text" name="fname"/>
<label>Last Name</label><input type="text" name="lname"/>
<label>Email</label><input type="email" name="email"/>
<label>Phone</label><input type="tel" name="phone"/>
<label>Your Experience</label><input type="number" name="exp"/>
<label>Unique-Id</label>
<input type="text" name="uniqueid" maxlength="12"/>
<input type="hidden" name="jobid" value="${jobid}">
<input type="hidden" name="req_exp" value="${req_exp}">
<input type="hidden" name="doi" value="${doi}">
<input type="submit">
</form>
</body>
</html>