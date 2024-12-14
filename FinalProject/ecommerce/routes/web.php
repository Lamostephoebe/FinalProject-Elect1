<?php

use App\Http\Controllers\DataController;
use App\Http\Controllers\MyShopController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [PageController::class,'index']);
Route::get('/about', [PageController::class,'about']);
Route::get('/register', [PageController::class, 'register']);
Route::post('/register', [DataController::class, 'register']);
Route::get('/login', [PageController::class, 'login'])->name('login');
Route::post('/login', [DataController::class, 'login']);
Route::post('/logout', [DataController::class, 'logout'])->middleware('auth');
Route::get('/', [ProductController::class,'listItems']);
Route::get('/myshop', [MyShopController::class,'myshop'])->middleware(['auth', 'seller']);
Route::get('/viewshop/{id}', [PageController::class,'viewshop'])->middleware('auth');
Route::get('/viewcart', [PageController::class, 'viewcart'])->middleware('auth');
Route::get('/product/{id}', [ProductController::class,'product'])->middleware('auth');