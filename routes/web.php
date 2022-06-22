<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\ClientsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\UserController;
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
    });

    Route::post('logout', [LoginController::class, 'destroy'])->middleware('auth');
});

