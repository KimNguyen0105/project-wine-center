<?php

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

Route::get('/', 'Controller@getHome');
Route::get('/language-{id}', 'Controller@setLanguage');
Route::post('/subscribe', 'Controller@Subscribe');

Route::get('/{slug_menu}/{slug}/brand-{id}/filter-product.html', 'Controller@getBrandProduct');
Route::get('/{slug_menu}/{slug}/collection-{id}/filter-product.html', 'Controller@getCollectionProduct');
Route::get('/{slug_menu}/price-{id}/filter-product.html', 'Controller@getPriceProduct');


Route::post('/submit-contact', 'Controller@SubmitContact');
Route::post('/subscribe-wine', 'Controller@SubscribeWine');
Route::get('/{slug}/search-product.html', 'Controller@SearchProduct');

Route::get('/{lang}-{id}-{slug}.html', 'Controller@getMenuPage');
Route::get('/{id_menu}-{slug_menu}/{lang}-{id}-{slug}.html', 'Controller@getDetail');
Route::get('/{slug}/{id}-{id_menu}/{slug_menu}.html', 'Controller@getWineCenter');
Route::get('/{id_menu}-{slug_menu}/{id}/{slug}.html', 'Controller@getProduct');
//================== Admin routes ================================
Route::get('/admin','Admin\AdminController@Home')->middleware('not.login');
Route::get('/admin/log-in','Admin\AccountController@getLogin');
Route::get('/admin/log-out','Admin\AccountController@Logout');
Route::post('/admin/log-in','Admin\AccountController@postLogin');
//system config
Route::get('/admin/system-config','Admin\AdminController@getSystemConfig')->middleware('not.login');
Route::post('/admin/system-config','Admin\AdminController@updateSystemConfig')->middleware('not.login');

//system language
Route::get('/admin/system-language','Admin\AdminController@getLanguage')->middleware('not.login');
Route::get('/admin/create-language','Admin\AdminController@getCreateNewLanguage')->middleware('not.login');
Route::post('/admin/create-language','Admin\AdminController@postCreateNewLanguage')->middleware('not.login');
Route::get('/admin/edit-language-{id}','Admin\AdminController@getEditLanguage')->middleware('not.login');
Route::post('/admin/edit-language-{id}','Admin\AdminController@postEditLanguage')->middleware('not.login');
Route::get('/admin/delete-language-{id}','Admin\AdminController@getDeleteLanguage')->middleware('not.login');
Route::post('/admin/delete-language-{id}','Admin\AdminController@postDeleteLanguage')->middleware('not.login');
//system permission
Route::get('/admin/system-permission','Admin\PermissionController@Index')->middleware('not.login');
Route::get('/admin/resize-image','Admin\PermissionController@getResize')->middleware('not.login');
Route::post('/admin/resize-image','Admin\PermissionController@postResize')->middleware('not.login');

//menu management
Route::get('/admin/{id}-menu-management','Admin\AdminController@getMenu')->middleware('not.login');
Route::get('/admin/create-new-menu','Admin\AdminController@getCreateNewMenu')->middleware('not.login');
Route::post('/admin/create-new-menu','Admin\AdminController@postCreateNewMenu')->middleware('not.login');
Route::get('/admin/delete-menu-{id}','Admin\AdminController@getDeleteMenu')->middleware('not.login');
Route::post('/admin/delete-menu-{id}','Admin\AdminController@postDeleteMenu')->middleware('not.login');
Route::get('/admin/edit-menu-{id}','Admin\AdminController@getEditMenu')->middleware('not.login');
Route::post('/admin/edit-menu-{id}','Admin\AdminController@postEditMenu')->middleware('not.login');

//slider management
Route::get('/admin/slider','Admin\SliderController@getSlider')->middleware('not.login');
Route::get('/admin/create-slider','Admin\SliderController@getCreateNewSlider')->middleware('not.login');
Route::post('/admin/create-slider','Admin\SliderController@postCreateNewSlider')->middleware('not.login');
Route::get('/admin/edit-slider-{id}','Admin\SliderController@getEditSlider')->middleware('not.login');
Route::post('/admin/edit-slider-{id}','Admin\SliderController@postEditSlider')->middleware('not.login');
Route::get('admin/delete-slider-{id}','Admin\SliderController@getDeleteSlider')->middleware('not.login');
Route::post('admin/delete-slider-{id}','Admin\SliderController@postDeleteSlider')->middleware('not.login');

//product managerment
Route::get('/admin/{id}-product','Admin\ProductController@getProductAdmin')->middleware('not.login');
Route::get('/admin/product/create-product','Admin\ProductController@getCreateProduct')->middleware('not.login');
Route::post('/admin/product/create-product','Admin\ProductController@postCreateProduct')->middleware('not.login');
Route::get('/admin/product/edit-product-{id}','Admin\ProductController@getEditProduct')->middleware('not.login');
Route::post('/admin/product/edit-product-{id}','Admin\ProductController@postEditProduct')->middleware('not.login');
Route::get('/admin/product/delete-product-{id}','Admin\ProductController@getDeleteProduct')->middleware('not.login');
Route::post('/admin/product/delete-product-{id}','Admin\ProductController@postDeleteProduct')->middleware('not.login');
//collection
Route::get('/admin/{id}-collection','Admin\CollectionController@getCollection')->middleware('not.login');
Route::get('/admin/collection/create-new-collection','Admin\CollectionController@getCreateCollection')->middleware('not.login');
Route::post('/admin/collection/create-new-collection','Admin\CollectionController@postCreateCollection')->middleware('not.login');
Route::get('/admin/collection/edit-collection-{id}','Admin\CollectionController@getEditCollection')->middleware('not.login');
Route::post('/admin/collection/edit-collection-{id}','Admin\CollectionController@postEditCollection')->middleware('not.login');
Route::get('/admin/collection/delete-collection-{id}','Admin\CollectionController@getDeleteCollection')->middleware('not.login');
Route::post('/admin/collection/delete-collection-{id}','Admin\CollectionController@postDeleteCollection')->middleware('not.login');
//brand
Route::get('/admin/{id}-brand','Admin\BrandController@getBrand')->middleware('not.login');
Route::get('/admin/brand/create-brand','Admin\BrandController@getCreateNewBrand')->middleware('not.login');
Route::post('/admin/brand/create-brand','Admin\BrandController@postCreateNewBrand')->middleware('not.login');
Route::get('/admin/brand/edit-brand-{id}','Admin\BrandController@getDetailBrand')->middleware('not.login');
Route::post('/admin/brand/edit-brand-{id}','Admin\BrandController@postDetailBrand')->middleware('not.login');
Route::get('/admin/brand/delete-brand-{id}','Admin\BrandController@getDeleteBrand')->middleware('not.login');
Route::post('/admin/brand/delete-brand-{id}','Admin\BrandController@postDeleteBrand')->middleware('not.login');
//country
Route::get('/admin/{id}-country','Admin\CountryController@getCountry')->middleware('not.login');
Route::get('/admin/country/create-country','Admin\CountryController@getCreateNewCountry')->middleware('not.login');
Route::post('/admin/country/create-country','Admin\CountryController@postCreateNewCountry')->middleware('not.login');
Route::get('/admin/country/edit-country-{id}','Admin\CountryController@getDetailCountry')->middleware('not.login');
Route::post('/admin/country/edit-country-{id}','Admin\CountryController@postDetailCountry')->middleware('not.login');
Route::get('/admin/country/delete-country-{id}','Admin\CountryController@getDeleteCountry')->middleware('not.login');
Route::post('/admin/country/delete-country-{id}','Admin\CountryController@postDeleteCountry')->middleware('not.login');

//Menu News Management
Route::get('/admin/{id}-menu-news','Admin\MenuNewsController@getMenuNews')->middleware('not.login');
Route::get('/admin/menu-news/create-menu-news','Admin\MenuNewsController@getCreateNewMenuNews')->middleware('not.login');
Route::post('/admin/menu-news/create-menu-news','Admin\MenuNewsController@postCreateNewMenuNews')->middleware('not.login');
Route::get('/admin/menu-news/edit-menu-news-{id}','Admin\MenuNewsController@getDetailMenuNews')->middleware('not.login');
Route::post('/admin/menu-news/edit-menu-news-{id}','Admin\MenuNewsController@postDetailMenuNews')->middleware('not.login');
Route::get('/admin/menu-news/delete-menu-news-{id}','Admin\MenuNewsController@getDeleteMenuNews')->middleware('not.login');
Route::post('/admin/menu-news/delete-menu-news-{id}','Admin\MenuNewsController@postDeleteMenuNews')->middleware('not.login');
//News management
Route::get('/admin/{id}-news','Admin\NewsController@getNews')->middleware('not.login');
Route::get('/admin/news/create-news','Admin\NewsController@getCreateNews')->middleware('not.login');
Route::post('/admin/news/create-news','Admin\NewsController@postCreateNews')->middleware('not.login');
Route::get('/admin/news/edit-news-{id}','Admin\NewsController@getEditNews')->middleware('not.login');
Route::post('/admin/news/edit-news-{id}','Admin\NewsController@postEditNews')->middleware('not.login');
Route::get('/admin/news/delete-news-{id}','Admin\NewsController@getDeleteNews')->middleware('not.login');
Route::post('/admin/news/delete-news-{id}','Admin\NewsController@postDeleteNews')->middleware('not.login');

//About management
Route::get('/admin/{id}-wine-center','Admin\WineCenterController@getWineCenterAdmin')->middleware('not.login');
Route::get('/admin/wine-center/edit-wine-center-{id}','Admin\WineCenterController@getEditWineCenter')->middleware('not.login');
Route::post('/admin/wine-center/edit-wine-center-{id}','Admin\WineCenterController@postEditWineCenter')->middleware('not.login');
Route::get('/admin/wine-center/delete-wine-center-{id}','Admin\WineCenterController@getDeleteWineCenter')->middleware('not.login');
Route::post('/admin/wine-center/delete-wine-center-{id}','Admin\WineCenterController@postDeleteWineCenter')->middleware('not.login');

//Address management
Route::get('/admin/{id}-address-management','Admin\AddressController@getAddress')->middleware('not.login');
Route::get('/admin/address/create-address','Admin\AddressController@getCreateAddress')->middleware('not.login');
Route::post('/admin/address/create-address','Admin\AddressController@postCreateAddress')->middleware('not.login');
Route::get('/admin/address/edit-address-{id}','Admin\AddressController@getEditAddress')->middleware('not.login');
Route::post('/admin/address/edit-address-{id}','Admin\AddressController@postEditAddress')->middleware('not.login');
Route::get('/admin/address/delete-address-{id}','Admin\AddressController@getDeleteAddress')->middleware('not.login');
Route::post('/admin/address/delete-address-{id}','Admin\AddressController@postDeleteAddress')->middleware('not.login');

//Labels
Route::get('/admin/{id}-labels-management','Admin\LabelsController@getLabelsAdmin')->middleware('not.login');
Route::get('/admin/1/save-label','Admin\LabelsController@getLabelsAdmin')->middleware('not.login');
