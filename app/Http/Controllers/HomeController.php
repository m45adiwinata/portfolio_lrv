<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Identity;
use App\About;
use App\Feature;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data['identity'] = Identity::get()->first();
        $data['about'] = About::get()->first();
        $data['skills'] = About::first()->skills()->get();
        $data['experiences'] = About::first()->experiences()->get();
        $data['educations'] = About::first()->education()->get();
        // return $data->first()->name;
        return view('start', $data);
    }

    public function about()
    {
        $data['about'] = About::get()->first();
        $data['skills'] = About::first()->skills()->get();
        $data['experiences'] = About::first()->experiences()->get();
        $data['educations'] = About::first()->education()->get();
        // return $data['educations'];
        return view('about', $data);
    }

    public function service()
    {
        $data["features"] = Feature::get();
        // return $data;
        return view('service', $data);
    }

    public function projects()
    {
        return view('myprojects');
    }

    public function testimonials()
    {
        return view('clienttesti');
    }
}
