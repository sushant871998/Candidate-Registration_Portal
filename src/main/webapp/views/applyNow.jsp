<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Apply Now</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <meta charset="ISO-8859-1">
</head>
<body>
<%--
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
--%>

<div class="container">
<div class="row" style="margin-top:10px;margin-left:30px margin-bottom:50px">
<form action="apply" method="post" class=" was-validated border rounded" style="margin-top:80px;margin-left:80px ;padding:20px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationServer01">First name</label>
      <input type="text" name="fname" class="form-control is-valid" id="validationServer01" placeholder="First name" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServer02">Last name</label>
      <input type="text" name="lname" class="form-control is-valid" id="validationServer02" placeholder="Last name" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationServerUsername">Username</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend3">@</span>
        </div>
        <input type="text" name="email" class="form-control is-invalid" id="validationServerUsername" placeholder="Username" aria-describedby="inputGroupPrepend3" required>
        <div class="invalid-feedback">
          Please choose a username.
        </div>
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationServer03">Unique-ID</label>
      <input type="text" name="uniqueid" maxlength="12" class="form-control is-invalid" id="validationServer03" placeholder="AADHAR/PAN" required>
      <div class="invalid-feedback">

      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer04">Your Experience</label>
      <input type="number" name="exp" class="form-control is-invalid" id="validationServer04" placeholder="Your Experience" required>
      <div class="invalid-feedback">

      </div>
    </div>
    <div class="col-md-3 mb-3">
      <label for="validationServer05" >Phone</label>
      <input type="tel" name="phone" class="form-control is-invalid" id="validationServer05" placeholder="Phone" required>
      <div class="invalid-feedback">

      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="form-check">
        <div class="custom-control custom-checkbox mb-3">
          <input type="checkbox" class="custom-control-input" id="customControlValidation1" required>
          <label class="custom-control-label" for="customControlValidation1">Agree to terms and conditions</label>
          <div class="invalid-feedback">Please Agree The terms and conditions</div>
        </div>
    </div>
  </div>
  <input type="hidden" name="jobid" value="${jobid}">
  <input type="hidden" name="req_exp" value="${req_exp}">
  <input type="hidden" name="doi" value="${doi}">
  <input type="submit"class="btn btn-primary" >
</form>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>