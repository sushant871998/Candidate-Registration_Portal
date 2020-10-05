<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ADMIN</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/admin.css"
</head>
<body>
<center>
  <div class="container bg-dark">
  <h1 class="text-center display-2 text-white">Welcome Admin</h1>
  </div>
  <div class="container bg-light">
    <br/>
    <br/>
  </div>
 <div class="container align-middle bg-light">
<div class="row" style="margin-left:300px;">
              <div class="col-md-2 ml-5">
                  <form action="addJob" method="get">
                      <input class="btn btn-dark" type="submit" value="Add Job" />
                  </form>
              </div>
              <div class="col-md-2">
                                <form action="updateTheJob" method="get">
                                    <input class="btn btn-dark" type="submit" value="Update Job" />
                                </form>
              </div>
              <div class="col-md-2">
                                <form action="deleteTheJob" method="get">
                                    <input class="btn btn-dark" type="submit" value="Delete Job" />
                                </form>
<br/>
                <br/>
  </div>
   </div>

</center>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>