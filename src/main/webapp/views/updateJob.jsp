<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap 4 css link-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Delete Page</title>
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      input[type=text] {
        width: 130px;
        -webkit-transition: width 0.4s ease-in-out;
        transition: width 0.4s ease-in-out;
      }

      /* When the input field gets focus, change its width to 100% */
      input[type=text]:focus {
        width: 70%;
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
</head>
<body>
<div class="container">
  <header class="blog-header py-3">
    <div class="row flex-nowrap justify-content-end align-items-center">

      <div class="nav justify-content-end" >
        <form action="/search" class="justify-content-end" >
          <input type="text" name="search" placeholder="Search..">
          <button type="submit"><i class="fa fa-search"></i></button>
        </form>
        <a class="btn btn-sm btn-outline-secondary ml-3 justify-content-end" href="/admin">Admin Login</a>
      </div>
    </div>
  </header>

  <div class="nav-scroller py-1 mb-2">
    <nav class="nav d-flex justify-content-between">
          <a class="p-2 text-muted" href="#">BI-Analytics</a>
          <a class="p-2 text-muted" href="#">FrontEnd</a>
          <a class="p-2 text-muted" href="#">Backend</a>
          <a class="p-2 text-muted" href="#">DataBase</a>
          <a class="p-2 text-muted" href="#">Operations</a>
          <a class="p-2 text-muted" href="#">DevOps</a>
          <a class="p-2 text-muted" href="#">Sales</a>
          <a class="p-2 text-muted" href="#">Finance</a>
          <a class="p-2 text-muted" href="#">HR</a>
        </nav>
  </div>

  <div class="jumbotron text-white rounded bg-dark">
    <div class="p-4 px-0">
     <h1 class="display-4 font-italic text-center" style="text-align:center">Aye Aye captain!!</h1>
      <img  class="rounded float-right md-10" src="https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTM2Qkc4CUhPxZaodKvhJQVIvDhV26EKcqwew&usqp=CAU" placeholder="not found"/>
    </div>
    <div class="col-md-10 ml-5">

    </div>
  </div>
<hr><br>
<div class="container>
            <div class="col-md-5 offset-md-5">
            <center>
                <h1>Update Job</h1>
                  <form action="updateJob" method="get" onsubmit="myFunction()">
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
               <hr><br><center/>
               <form action="updateJob" method="post">
               <center>
               <label>Updated Title</label>
               <input name="taketitle" type="text" value="${title}"></input>
               <label>Updated Details</label>
               <input name="takedetails" type="text" value="${details}"></input>
               <label>Updated Experience</label>
               <input name="takereq_experience" type="number" value="${req_experience}"></input>
               <label>Updated Date_of_interview</label>
               <input name="takedoi" type="date"/>
               </center>
               <input type="submit"/>
               </form>
               <center><hr><br></center>
           <div>
           </c:when>
           <c:otherwise>
           </c:otherwise>
</c:choose>
<div class="col-md-4 mb-4" style="margin-left:900px;">
                  <form action="/" method="get">
                      <input class="btn btn-info btn-lg" type="submit" value="Home" />
                  </form>
              </div>
<!-- Bootstrap 4 script link-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>