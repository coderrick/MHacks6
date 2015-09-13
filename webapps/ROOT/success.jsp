<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
<head>
	<title>Videos</title>
	<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Arvo">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="style.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header" style = "margin-left:12%;">
				<a class="navbar-brand" style="color:white" href="#">Beep it!</a>
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
					<li class="active"><a href="index.html">Home</a></li>
					<li class="active"><a href="about.html">About</a></li>
					<li class="active"><a href="videos.html">Videos</a></li>


				</ul>
				<ul class="nav navbar-nav" style = "margin-left: 8%;">
					<a href="logout.jsp"><li class="btn btn-info btn-lg" data-toggle="modal" data-target="#log_in">Logout</li></a>

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
			<ul id = "vid_array">
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/EvgeCG2e-6c" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/-GW6Mn7OZJs" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/jUAqnJuY3Z0" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/zAaWNyqRw9o" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/7y1xJAVZxXg" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/Z42vDV2q6II" allowfullscreen></iframe></li>
			</ul>
		</div>
		<div id = "serious_vids" class="tab-pane fade">
			<ul id = "vid_array">
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/liZm1im2erU" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/cZaJYDPY-YQ" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/stoLqWXsIOY" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/10yrPDf92hY" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/10yrPDf92hY" allowfullscreen></iframe></li>
				<li class = "vid"><iframe class="youtube-player" width = "90%" height = "300px" src="https://www.youtube.com/embed/10yrPDf92hY" allowfullscreen></iframe></li>
			</ul>	
		</div>
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