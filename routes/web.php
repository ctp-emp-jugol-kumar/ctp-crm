<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ClientsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DesignController;
use App\Http\Controllers\DomainController;
use App\Http\Controllers\FeatureController;
use App\Http\Controllers\HostingController;
use App\Http\Controllers\InvoiceController;
use App\Http\Controllers\MethodController;
use App\Http\Controllers\PlatformController;
use App\Http\Controllers\PurposeController;
use App\Http\Controllers\QuotationController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\WebsiteController;
use App\Http\Controllers\WorkController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', [LoginController::class, 'login']);

Route::prefix('admin')->group(function(){

    Route::middleware('guest')->group(function (){
        Route::get('login', [LoginController::class, 'login'])->name('login');
        Route::post('login', [LoginController::class, 'authenticate']);
    });

    Route::middleware(['auth', 'web'])->group(function(){
        // dashboard management
        Route::get('dashboard', DashboardController::class);
        // user management
        Route::resource('users', AdminController::class);
        // clients management
        Route::resource('clients', ClientsController::class);
        // designs management
        Route::resource('designs', DesignController::class);
        // services management
        Route::resource('services', WebsiteController::class);
        // platforms management
        Route::resource('platforms', PlatformController::class);
        // features management
        Route::resource('features', FeatureController::class);
        // works management
        Route::resource('works', WorkController::class);
        // domains management
        Route::resource('domains', DomainController::class);
        // hostings management
        Route::resource('hostings', HostingController::class);
        // quotations management
        Route::resource('quotations', QuotationController::class);
        // invoices management
        Route::resource('invoices', InvoiceController::class);
        // invoices management
        Route::resource('methods', MethodController::class);
        // invoices management
        Route::resource('purposes', PurposeController::class);
    });

    Route::post('logout', [LoginController::class, 'destroy'])->middleware('auth');
});

