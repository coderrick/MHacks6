<%@ page language="java" contentType="text/html" 
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Spleek</title>
        <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arvo">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="style.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/pure-min.css">
        <link rel="stylesheet" href="http://yui.yahooapis.com/pure/0.6.0/grids-responsive-min.css">
        <link rel="stylesheet" href="http://purecss.io/combo/1.18.13?/css/layouts/marketing.css">
        <link rel="stylesheet" href="main.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
        <script src="main.js"></script>
    </head>
    <body>
            <nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header" style = "margin-left:12%;">
				<a class="navbar-brand" style="color:white" href="#"></a>
			</div>
			<div>

				<div class="col-sm-3 col-md-3 pull-left" style= "margin-left:auto; margin-right:auto;" >
					<form class="navbar-form" role="search">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search" name="srch-term" id="srch-term">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
							</div>
						</div>
					</form>
				</div>
				<ul class="nav navbar-nav" style = "margin-left:13%;">
					<li class="active"><a href="about.html">About</a></li>


				</ul>
				<ul class="nav navbar-nav" style = "margin-left: 10%;">
					<a href="reg.jsp"><li class="btn btn-info btn-lg" data-toggle="modal" data-target="#sign_up">Sign Up</li></a>
					<a href="login.jsp"><li class="btn btn-info btn-lg" data-toggle="modal" data-target="#log_in">Login</li></a>

				</ul>
			</div>
		</div>
	</nav>
	<div id = "explanation">
		<h1 class = "msg">Inappropriate? Censor it.</h1>
		<h1 class = "msg">Appropriate? Still censor it.</h1>
		<center><button type="button" id = "start" class="btn btn-primary">Censor a Video!</button></center>
	</div>
	<div id = "summary">
		<h1 style = "font-family: sans-serif;">This is a tool that allows you to edit videos and add necessary and unncessary censorship to them.</h1>
		<h1 style = "text-align:center; font-family: sans-serif;">For jokes and for seriouseness.</h1>
	</div>
	<div id="sign_up" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Sign Up</h4>
				</div>
				<div class="modal-body">
				<div class="form-group">
				  <label for="usr">Username:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="pwd">Password:</label>
				  <input type="password" class="form-control" id="pwd">
				</div>
				</div>
				<div class="modal-footer">
					<button id = "register" type ="button" class = "btn btn-default" data-dismiss="modal">Sign Up!</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	<div id="log_in" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Log In</h4>
				</div>
				<div class="modal-body">
				<div class="form-group">
				  <label for="usr">Username:</label>
				  <input type="text" class="form-control" id="usr">
				</div>
				<div class="form-group">
				  <label for="pwd">Password:</label>
				  <input type="password" class="form-control" id="pwd">
				</div>

				</div>
				<div class="modal-footer">
				    <button id = "Login" type ="button" class = "btn btn-default" data-dismiss="modal">Sign In</button>
				  	<button type="button" class="btn btn-default" data-dismiss="modal">Close f</button>
				</div>
			</div>
		</div>
	</div>
    </body>		
</html>