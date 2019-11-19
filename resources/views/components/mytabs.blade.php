<!--================My Tabs Area =================-->
<section class="mytabs_area p_120">
	<div class="container">
		<div class="tabs_inner">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<li class="nav-item">
					<a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">My Experiences</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">My Education</a>
				</li>
			</ul>
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
					<ul class="list">
						@foreach($experiences as $experience)
						<li>
							<span></span>
							<div class="media">
								<div class="d-flex">
									<p>{{$experience->start}} to {{$experience->end}}</p>
								</div>
								<div class="media-body">
									<h4>{{$experience->position}}</h4>
									<p>{{$experience->job}} <br />{{$experience->location}}</p>
								</div>
							</div>
						</li>
						@endforeach
					</ul>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<ul class="list">
						@foreach($educations as $education)
						<li>
							<span></span>
							<div class="media">
								<div class="d-flex">
									<p>{{$education->start}} to {{$education->end}}</p>
								</div>
								<div class="media-body">
									<h4>{{$education->position}}</h4>
									<p>{{$education->school}} <br />{{$education->location}}</p>
								</div>
							</div>
						</li>
						@endforeach
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<!--================End My Tabs Area =================-->