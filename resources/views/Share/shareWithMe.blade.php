<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Pro Dataroom</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
	<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700" rel="stylesheet">
	<link href="{{ asset('css/share_Module/style.css') }}" rel="stylesheet" media="screen"/>
</head>
<body>
	<div class="main-div">
	<header class="header-top"><a class="logo" href=""><img src="{{url('/')}}/dist/img/Share_module_logo.png" alt="logo"/></a><section><input placeholder="Search Here..." type="text"/><span><a href=""><i class="fas fa-address-book"></i></a><a href=""><i class="fas fa-bell"></i></a></span></section></header>
		<div class="left-bar">
			<ul>
				<li>Menu</li>
			<li><a href="">Home</a></li>
				<li><a href="">About</a></li>
				<li><a href="">Contact</a></li>
			</ul>
		</div><!--left bar close-->
		
		<div class="right-bar">
			<div class="section-box folders">
				<h6>Folders</h6>
			  <ul>

				@foreach($DocumentFolder as $DocumentFolder)
				  @foreach($DocumentFolder as $DocumentFolder)
					<li>
						<a href=""><span><i class="fas fa-folder"></i><b>{{$DocumentFolder->document_name}}</b></span>
						</a>
					</li>
				   @endforeach
				@endforeach
				</ul>
			</div>
			
			<div class="section-box">
				<h6>Files</h6>
			<ul>

				@foreach($DocumentFile as $DocumentFile)
				  @foreach($DocumentFile as $DocumentFile)

					<li>
						<a href=""><span><i class="fas fa-file"></i><b>{{$DocumentFile->document_name}}</span>
						</a>
					</li>
					
				   @endforeach
				@endforeach
				
				</ul>
			</div>
		</div><!--right bar close-->
	</div><!--main div close-->
</body>
</html>