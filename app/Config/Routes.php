<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Pages::index');
$routes->get('/about', 'Pages::about');
$routes->get('/contact', 'Pages::contact');
$routes->get('/komik', 'Komik::index');
$routes->get('/orang', 'Orang::index');
$routes->get('/komik/create', 'Komik::create');
$routes->get('/komik/edit/(:segment)', 'Komik::edit/$1');
$routes->post('/komik/save', 'Komik::save');
$routes->post('/komik/update/(:num)', 'Komik::update/$1');
$routes->get('/orang/search', 'Orang::index');

$routes->delete('/komik/(:num)', 'Komik::delete/$1');
$routes->get('/komik/(:any)', 'Komik::detail/$1');
// $routes->get('/coba', 'Coba::index');
// $routes->get('/users', 'Admin\Users::index');
