<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');
    $router->resource('/identity', IdentityController::class);
    $router->resource('/about', AboutController::class);
    $router->resource('/experiences', ExperienceController::class);
    $router->resource('/education', EducationController::class);
    $router->resource('/features', FeatureController::class);

});
