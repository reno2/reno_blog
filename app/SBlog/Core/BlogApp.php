<?php


namespace App\SBlog\Core;


class BlogApp
{
		public static $app;

		public static function get_Instance(){
			self::$app = Registy::instance();
			self::getParams();
			return self::$app;
		}
		public static function getParams(){
				$params = require CONF . '/params.php';
				if(!empty($params)){
						foreach($params as $k=>$v){
								self::$app->setProperty($k, $v);
						}
				}
		}
}
