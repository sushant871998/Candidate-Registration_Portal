<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap 4 css link-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Delete Page</title>
</head>
<body>
        <div class="container>
            <div class="col-md-5 offset-md-5">
            <center>
                <h1>Delete Job</h1>
                  <form action="deleteJob" method="get">
                    <label>Enter JobId</label>
                    <input type="number" name="jobIdnum" />
                    <input class="btn btn-danger btn-lg" type="submit" value="Submit" />
                  </form>
            </center>
            </div>
      </div><br>
<c:choose>
<c:when test="${jobId>0}">
       <div class="container">
               <h1 class="center">Job Details</h1>
               <hr>
               <table class="table table-striped">
                 <thead>
                   <tr class="thead-dark">
                     <th scope="col">JobId</th>
                     <th scope="col">Title</th>
                     <th scope="col">Details</th>
                     <th scope="col">Req_Experience</th>
                     <th scope="col">Date_Of_Interview</th>
                   </tr>
                 </thead>
                 <tbody>
                   <tr>
                     <td>${jobId}</td>
                     <td>${title}</td>
                     <td>${details}</td>
                     <td>${req_experience}</td>
                     <td>${doi}</td>
                   </tr>
                 </tbody>
               </table>
               <hr><br><center>
                <div class="col-md-4">
                  <form action="deleteJob/${jobId}" method="post">
                      <input class="btn btn-success btn-lg" type="submit" value="Confirm" />
                  </form>
                  <p style = "color: green"></p></center>
                </div>
           <div>
           </c:when>
           <c:otherwise>

           </c:otherwise>
</c:choose><center>
<div class="col-md-4">
                  <form action="/" method="get">
                      <input class="btn btn-info btn-lg" type="submit" value="Home" />
                  </form>
              </div></center>
<!-- Bootstrap 4 script link-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</script>
</body>
</html>