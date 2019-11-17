@extends('layouts.cover')

@section('content')
@include('components.header')
@include('components.homebody')
@include('components.footer')
<script src="{{asset('js/jquery-3.3.1.min.js')}}"></script>
<script src="{{asset('js/popper.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/stellar.js')}}"></script>
<script src="{{asset('vendors/lightbox/simpleLightbox.min.js')}}"></script>
<script src="{{asset('vendors/nice-select/js/jquery.nice-select.min.js')}}"></script>
<script src="{{asset('vendors/isotope/imagesloaded.pkgd.min.js')}}"></script>
<script src="{{asset('vendors/isotope/isotope.pkgd.min.js')}}"></script>
<script src="{{asset('vendors/owl-carousel/owl.carousel.min.js')}}"></script>
<script src="{{asset('vendors/popup/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('js/jquery.ajaxchimp.min.js')}}"></script>
<script src="{{asset('vendors/counter-up/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('vendors/counter-up/jquery.counterup.min.js')}}"></script>
<script src="{{asset('js/mail-script.js')}}"></script>
<script src="{{asset('js/theme.js')}}"></script>
@endsection