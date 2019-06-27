<?php



Route::get('/','MainController@displayLinks');


Route::get('/create','MainController@showForm');


Route::post('/create','MainController@createLink');


Route::get('/{code}','MainController@redirect');





