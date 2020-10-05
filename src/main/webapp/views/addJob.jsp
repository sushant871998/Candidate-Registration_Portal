<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <meta charset="ISO-8859-1">
</head>
<body>
<%--
<form action="addJob" method="post">
<center>
<label>Title</label>
<input name="title" type="text"></input>
<label>Details</label>
<input name="details" type="text"></input>
<label>Experience</label>
<input name="req_experience" type="number"></input>
<label>Date_of_interview</label>
<input name="doi" type="date"></input>
</center>
<input type="submit"/>
</form>
--%>
<form action="addJob" method="post" class=" was-validated border rounded" style="margin-top:80px;margin-left:80px;margin-right:20px;padding:20px;box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
  <div class="form-row">

    <div class="col-md-4 mb-3">
      <label for="validationServer01">Title</label>
      <input type="text" name="title" class="form-control is-valid" id="validationServer01" placeholder="Title" required>
        <%--
      <div class="custom-control mb-3">
          <input type="text" class="custom-control-input" id="customControlValidation1" required>
          <label class="custom-control-label" for="customControlValidation1">Title</label>
          <div class="invalid-feedback">Example invalid feedback text</div>
        </div>
        --%>
    </div>
    <div class="col-md-8 mb-3">
      <label for="validationServer02">Details</label>
      <input type="text" name="details" class="form-control is-valid" id="validationServer02" placeholder="details" required>
    </div>
    <div class="col-md-2 mb-3">
      <label for="validationServerUsername">Req-Experience</label>
      <div class="input-group">
        <input type="number" name="req_experience" class="form-control is-invalid" id="validationServerUsername" placeholder="Exp Required" aria-describedby="inputGroupPrepend3" required>
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationServer03">Date_of_interview</label>
      <input name="doi" type="date" class="form-control is-valid" id="validationServer03" required>
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
 <input type="submit" class="btn btn-primary"/>
</form>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>