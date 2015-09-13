<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<head>
	<title>Videos</title>
	<link rel="http://gdata.youtube.com/schemas/2007#video.captionTracks"
     type="application/atom+xml"
     href="https://gdata.youtube.com/feeds/api/videos/ZTUVgYoeN_b/captions"
     yt:hasEntries="true|false"/>
    <script src="https://apis.google.com/js/client.js?onload=googleApiClientReady"></script>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arvo">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="xml2json.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  	<script src="build/tracking-min.js"></script>
  	<script src="build/data/face-min.js"></script>
  	<script src="build/data/eye-min.js"></script>
  	<script src="build/data/mouth-min.js"></script>
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="soundeff.js"></script>

</head>

<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header" style = "margin-left:12%;">
				<a class="navbar-brand" style="color:white" href="#">Spleek</a>
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
				<ul class="nav navbar-nav" style = "margin-left:11%;">

				</ul>
				<ul class="nav navbar-nav" style = "margin-left: 12%;">
					<li class="btn btn-primary btn-lg" data-toggle="modal" data-target="#sign_up">Sign Up</li>
					<li class="btn btn-primary btn-lg" data-toggle="modal" data-target="#log_in"style = "margin-left: 5px;">Login</li>

				</ul>
			</div>
		</div>
	</nav>
	<ul id = "switch" class="nav nav-pills nav-justified">
		<li class = "active"><a data-toggle="pill" href="#vids">Funny</a></li>
		<li ><a data-toggle="pill" href="#serious_vids">Censored</a></li>
	</ul>
	<div class = "tab-content">
		<div id = "vids"  class="tab-pane fade in active">
			<div class = "video" id = "one"></div>
		<div class="btn-group btn-group-justified" style = "margin-top:10px;">
		<!--
			<a href="#" class="btn btn-primary" onclick = "changeVideo(0);" >One</a>
			<a href="#" class="btn btn-primary"onclick = "changeVideo(1);">Two</a>
			<a onclick = "changeVideo(2);" href="#" class="btn btn-primary">Three</a>
			<a onclick = "changeVideo(3);" href="#" class="btn btn-primary">Four</a>
			<a onclick = "changeVideo(4);" href="#" class="btn btn-primary">Five</a>
			<a onclick = "changeVideo(5);" href="#" class="btn btn-primary">Six</a> !-->
		</div>
		</div>

		<div id = "serious_vids" class="tab-pane fade">
			<div class = "video" id = "real_one"></div>

		<div class="btn-group btn-group-justified" style = "margin-top:10px;">
		<!--
			<a onclick = "changeVideo2(0);" href="#" class="btn btn-primary">One</a>
			<a onclick = "changeVideo2(1);" href="#" class="btn btn-primary">Two</a>
			<a onclick = "changeVideo2(2);" href="#" class="btn btn-primary">Three</a>
			<a onclick = "changeVideo2(3);" href="#" class="btn btn-primary">Four</a>
			<a onclick = "changeVideo2(4);" href="#" class="btn btn-primary">Five</a>
			<a onclick = "changeVideo2(5);" href="#" class="btn btn-primary">Six</a> !-->
		</div>			
		</div>

	</div>
	<div id="sign_up" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
</body>
</html>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("userid")%>

<%
    }
%>