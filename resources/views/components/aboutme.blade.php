<!--================Welcome Area =================-->
<section class="welcome_area p_120">
	<div class="container">
		<div class="row welcome_inner">
			<div class="col-lg-6">
				<div class="welcome_text">
					<h4>About Myself</h4>
					<p>
						{{$about->aboutme}}
					</p>
					<div class="row">
						<div class="col-md-4">
							<div class="wel_item">
								<i class="lnr lnr-database"></i>
								<h4>{{$about->total_funds}}</h4>
								<p>Total Funds</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="wel_item">
								<i class="lnr lnr-book"></i>
								<h4>{{$about->total_projects}}</h4>
								<p>Total Projects</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="wel_item">
								<i class="lnr lnr-users"></i>
								<h4>{{$about->total_volunteers}}</h4>
								<p>Total Volunteers</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6">
				<div class="tools_expert">
					<div class="skill_main">
                        @foreach($skills as $skill)
						<div class="skill_item">
							<h4>{{$skill->name}} <span class="counter">{{$skill->value}}</span>%</h4>
							<div class="progress_br">
								<div class="progress">
									<div class="progress-bar" role="progressbar" aria-valuenow="{{$skill->value}}" aria-valuemin="0" aria-valuemax="100"></div>
								</div>
							</div>
						</div>
                        @endforeach
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End Welcome Area =================-->