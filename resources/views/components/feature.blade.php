<!--================Feature Area =================-->
<section class="feature_area p_120">
	<div class="container">
		<div class="main_title">
			<h2>offerings to my clients</h2>
			<p>
				If you are looking at blank cassettes on the web, 
				you may be very confused at the difference in price. 
				You may see some for as low as IDR 800.000 each.
				Higher difficulty raise higher price.
			</p>
		</div>
		<div class="feature_inner row">
			@foreach($features as $feature)
			<div class="col-lg-4 col-md-6">
				<div class="feature_item">
					<i class="flaticon-city"></i>
					<h4>{{$feature->name}}</h4>
					<p>
						{{$feature->description}}
					</p>
				</div>
			</div>
			@endforeach
		</div>
	</div>
</section>
<!--================End Feature Area =================-->