
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Akki's Ticket Counter.</title>
  </head>
  <body>
    <form action="details">

<h1 align="center">WelCome to Ticket Counter</h1>
<h2 align="center">Please Enter Your Boarding and Arriving Station Details below</h2><br>


  <div align="center" class="form-group mb-2">
    <label style="margin-right: 20px" for="exampleInputEmail1">From</label><br>
    <input name="board" style="margin-right: 10px" type="text" class="form-group mb-2"  placeholder="Boardin Station">
  </div>
  <div align="center" class="form-group mb-2">
    <label style="margin-right: 20px" for="exampleInputPassword1">To</label><br>
    <input name="arriving" style="margin-right: 5px" type="text" class="form-group mb-2"  placeholder="Destination"><br>
  </div>  
  <button style="margin-left: 640px" type="submit" class="btn btn-primary">Submit</button>
</form><br>

<div align="center"><h3><%
if(request.getAttribute("msg")!=null){
	out.println(request.getAttribute("msg"));
} 
%></h3></div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>

