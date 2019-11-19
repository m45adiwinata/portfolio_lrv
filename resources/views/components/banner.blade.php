<!--================Home Banner Area =================-->
<section class="home_banner_area">
   	<div class="container box_1620">
   		<div class="banner_inner d-flex align-items-center">
			<div class="banner_content">
				<div class="media">
					<div class="d-flex">
						<img src="{{asset('uploads/'.$identity->picture_path)}}" alt="">
					</div>
					<div class="media-body">
						<div class="personal_text">
							<h6>Hello Everybody, i am</h6>
							<h3>{{$identity->name}}</h3>
							<h4>{{$identity->jobs}}</h4>
							<p>
								{{$identity->description}}
							</p>
							<ul class="list basic_info">
								<li><a href="#"><i class="lnr lnr-calendar-full"></i> {{$identity->birth_date}}</a></li>
								<li><a href="#"><i class="lnr lnr-phone-handset"></i> {{$identity->phone_number}}</a></li>
								<li><a href="#"><i class="lnr lnr-envelope"></i> {{$identity->email}}</a></li>
								<li><a href="#"><i class="lnr lnr-home"></i> {{$identity->address}}</a></li>
							</ul>
							<ul class="list personal_social">
								<li><a href="{{$identity->facebook}}"><i class="fa fa-facebook"></i></a></li>
								<li><a href="{{$identity->twitter}}"><i class="fa fa-twitter"></i></a></li>
								<li><a href="{{$identity->linkedin}}"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</section>
<!--================End Home Banner Area =================-->