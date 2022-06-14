<!DOCTYPE html>
<html lang="en">
<head>
	<title>Website tìm kiếm phòng trọ uy tín nhất Việt Nam</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<base href="{{asset('')}}">
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/style.css">
	<link rel="stylesheet" href="assets/awesome/css/fontawesome-all.css">
	<link rel="stylesheet" href="assets/toast/toastr.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
	<script src="assets/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/myjs.js"></script>
	<link rel="stylesheet" href="assets/selectize.default.css" data-theme="default">
	<script src="assets/js/fileinput/fileinput.js" type="text/javascript"></script>
	<script src="assets/js/fileinput/vi.js" type="text/javascript"></script>
	<link rel="stylesheet" href="assets/fileinput.css">
	<script src="assets/pgwslider/pgwslider.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="assets/pgwslider/pgwslider.min.css">
	<link rel="stylesheet" href="assets/bootstrap/bootstrap-select.min.css">
	<link rel="stylesheet" href="http://blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
	<script src="assets/bootstrap/bootstrap-select.min.js"></script>	
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>                        
				</button>
				<div class="header__logo">
					<a class="navbar-brand" href="">							
						<p><i class="fa fa-home"></i> HUFLIT HOMES <span>Giải pháp tìm kiếm nhanh chóng</span></p>
					</a>
				</div>				
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav" style="margin-top: 5px;">
					@foreach($categories as $category)
					<li><a href="category/{{$category->id}}">{{ $category->name }}</a></li>
					@endforeach
				</ul>
				@if(Auth::user())
				<ul class="nav navbar-nav navbar-right" style="margin-top: 5px">
					<li><a class="btn-dangtin" href="user/dangtin"><i class="fas fa-edit"></i> Đăng tin ngay</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">Xin chào! {{Auth::user()->name}} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="user/profile">Thông tin chi tiết</a></li>
							<li><a href="user/dangtin">Đăng tin</a></li>
							<li><a href="user/logout">Thoát</a></li>
						</ul>
					</li>
					
				</ul>
				
				@else
				<ul class="nav navbar-nav navbar-right">
					<li><a class="btn-dangtin" href="user/dangtin"><i class="fas fa-edit"></i> Đăng tin ngay</a></li>
					<li><a href="user/login"><i class="fas fa-user-circle"></i> Đăng Nhập</a></li>
					<li><a href="user/register"><i class="fas fa-sign-in-alt"></i> Đăng Kí</a></li>
				</ul>
				@endif
			</div>
		</div>
	</nav>	
		@yield('content')
	<div class="gap"></div>
	<!-- footer section -->
	<footer class="footer_section">
		<div class="container">
			<div class="row">                                                   
				<div class="col-md-6 col-lg-3 footer-col">
					<div class="footer_detail">
						<h4>Website Tìm Kiếm Phòng Trọ</h4>
						<p><i class="fas fa-chalkboard-teacher"></i> GVHD: Ts.Đặng Thị Kim Giao</p>
						<p><i class="fa fa-group"></i> Nhóm sinh viên thực hiện: 16</p>
						<p><i class="fas fa-school"></i> Trường Đại Học Ngoại Ngữ - Tin Học TP.HCM (HUFLIT)</p>     
						<div class="footer_social">
							<a href="">
								<i class="fab fa-facebook-f" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fab fa-twitter" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fab fa-linkedin-in" aria-hidden="true"></i>
							</a>
							<a href="">
								<i class="fab fa-instagram" aria-hidden="true"></i>
							</a>
						</div>																	
					</div>
				</div>
				<div class="col-md-6 col-lg-3 footer-col">
					<div class="footer_contact">
						<h4>Văn Phòng Làm Việc</h4>
						<div class="contact_link_box">
							<a href=""><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><span>828 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh</span></a>
							<a href=""><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><span>(+84 28) 38 632 052 - 38 629 232 </span></a>
							<a href=""><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><span>contact@huflit.edu.vn</span></a>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 footer-col">
					<div class="footer_contact">
						<h4>Bản Tin Phòng Trọ</h4>
						<form action="#">
							<input type="text" placeholder="Nhập email">
							<button type="submit">Đăng Ký</button>
						</form>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 footer-col">
					<div class="map_container">
					<div class="map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.460556613028!2d106.66518151462265!3d10.775994592321853!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752edb765b5c25%3A0x9a3519bdad5a85a3!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBOZ2_huqFpIG5n4buvIC0gVGluIGjhu41jIFRow6BuaCBwaOG7kSBI4buTIENow60gTWluaA!5e0!3m2!1svi!2s!4v1654002717595!5m2!1svi!2s" 
						max-width="375px" height="100%" style="border:0;" 
						allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
					</iframe>
					</div>
					</div>
				</div>
			</div>
			<div class="footer-info">
				<p>Copyright &copy; <script>document.write(new Date().getFullYear());</script> All rights reserved | Trang web được xây dựng bởi Nhóm 16</p>
			</div>
		</div>
	</footer>
	<!-- footer section -->
<script type="text/javascript" src="assets/toast/toastr.min.js"></script>
</body>
</html>
