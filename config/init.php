<?php

if(!defined('ROOT')) define('ROOT', dirname(__DIR__));
if(!defined('WWW')) define('WWW', ROOT . '/public');
if(!defined('APP')) define('APP', ROOT . '/app');
if(!defined('CORE')) define('CORE', ROOT . '/resources');
if(!defined('LIBS')) define('LIBS', ROOT . '/resources/libs');
if(!defined('CACHE')) define('CACHE', ROOT . '/tmp/cache');
if(!defined('CONF')) define('CONF', ROOT . '/config');
if(!defined('LAYOUT')) define('LAYOUT', 'app.blade.php');
if(!defined('IMG')) define('IMG', '/public/uploads/post_img');

$host = false;

if(isset($_SERVER['HTTP_HOST'])){
		$host = $_SERVER['HTTP_HOST'];
}