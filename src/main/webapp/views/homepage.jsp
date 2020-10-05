<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Job Portal</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/blog/">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <meta charset="ISO-8859-1">
    <!-- Bootstrap core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="mask-icon" href="/docs/4.4/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.4/assets/img/favicons/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="msapplication-config" content="/docs/4.4/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


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

  <div class="jumbotron p-4 p-md-5 text-white rounded bg-dark">
    <div class="col-md-6 px-0">
      <h1 class="display-4 font-italic">Careers @MyCompany.in</h1>
      <p class="lead my-3">Come be a part of the amazing team at MyCompany.in,and step into the world of Nirvana</p>
      <p class="lead mb-0"><a href="#" class="text-white font-weight-bold">Continue Exploring.....</a></p>
    </div>
  </div>
<hr><br>
 <div class="row">
<h2 class="font-weight-normal">Job Posts</h2>
<span class="dropdown" style="margin-left:780px;">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Sort By
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="/by-name?">By Title</a>
    <a class="dropdown-item" href="/by-exp?">By Exp required</a>
    <a class="dropdown-item" href="/by-doi?">By Date of Interview</a>
  </div>
</span>
</div>
<hr>
<c:forEach items="${list}" var="element">
   <div class="card bg-light mb-3" >
   <div class="card-header text-light bg-dark">${element.title}</div>
   <div class="card-body">
     <h5 class="card-title">REQ-EXP ${element.req_experience} yrs</h5>
     <p class="card-text">${element.details}</p>
     <form action="apply" method="get">
     <input type="hidden" name="jobid" value="${element.jobId}"/>
     <input type="hidden" name="req_exp" value="${element.req_experience}"/>
     <input type="hidden" name="doi" value="${element.date_of_interview}"/>
     <input type="submit" value="APPLY NOW" class="btn btn-outline-dark"/>
     </form>
   </div>
 </div>
 </c:forEach>

</main><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</script>

<footer class="blog-footer">
  <p>Blog template built for <a href="https://getbootstrap.com/">Bootstrap</a> by <a href="https://twitter.com/mdo">@mdo</a>.</p>
  <p>
    <a href="#">Back to top</a>
  </p>
</footer>
</body>
</html>