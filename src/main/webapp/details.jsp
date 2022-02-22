<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=yes">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Details</title>
</head>
<body>
	<form action="preview">
		<h2 align="center" style="color: red"><%if(request.getAttribute("msg")!=null)
		{out.println(request.getAttribute("msg"));}
		
		%></h2>
		<h1 align="center">Enter Passenger Details Below to book Ticket</h1>
		<br> <br>
		<table class="table table-bordered mx-sm-2 mb-2 table-hover table-mx-sm-3 mb-2 table-responsive-sm" style=" margin-top:50px;margin-left:100px" >
			<tbody>
				<tr class=" col-sm">
					<td >Name :</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td>Age :</td>
					<td><input type="text" name="age" /></td>

				</tr>
				<tr>
					<td>Mobile No. :</td>
					<td><input type="text" name="mob" /></td>
				</tr>
				<tr>
					<td>Adhaar No. :</td>
					<td><input type="text" name="adhaar" /></td>
				</tr>
			</tbody>
		</table>
		<div align="center" >
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
		    <small  style="margin-left: 620px;color: red;" class="form-text text-muted"><b><%if(request.getAttribute("mm")!=null)
		{out.println(request.getAttribute("mm"));}
		
		%></b></small>
		
		<%-- <h2 align="center" style="color: red"><%if(request.getAttribute("mm")!=null)
		{out.println(request.getAttribute("mm"));}
		
		%></h2> --%>
	</form>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>

</html>