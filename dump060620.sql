-- MySQL dump 10.13  Distrib 5.6.35, for Linux (x86_64)
--
-- Host: localhost    Database: renigato_laravel
-- ------------------------------------------------------
-- Server version	5.7.21-20-beget-5.7.21-20-1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `article_tag_article_id_foreign` (`article_id`),
  KEY `article_tag_tag_id_foreign` (`tag_id`),
  CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (2,2,1),(26,6,1),(34,7,2),(35,7,6),(36,7,8),(37,4,1),(38,4,4),(39,4,5),(40,5,1),(41,12,1),(45,13,1),(50,15,1),(51,14,1);
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_short` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_show` tinyint(1) DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `viewed` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `on_front` tinyint(1) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `articles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Bitrix','bitrix','Краткое описание','<p>Покупатели, которые приобрели Пульсоксиметр оксиметр на палец Oximeter, также купили</p>\r\n\r\n<p><img alt=\"\" src=\"/storage/article/1590752896novyypng\" style=\"width: 271px; height: 375px;\" /><img alt=\"\" src=\"/storage/article/1590775836novyy-ngshpng\" style=\"width: 286px; height: 556px; float: right;\" /></p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-11 17:28:05','2020-05-29 15:10:46',1,100),(2,'Роутинг в shop-script','routing-v-shop-script-1105202257','Как сделать простой роут в shop-script','<p>Или указать именованное правило или плагин:</p>\r\n\r\n<pre>\r\n<code>vue inspect --rule vue\r\nvue inspect --plugin html\r\n</code></pre>\r\n\r\n<p>Наконец, вы можете вывести все именованные правила и плагины:</p>\r\n\r\n<pre>\r\n<code>vue inspect --rules\r\nvue inspect --plugins\r\n</code></pre>\r\n\r\n<h2 id=\"испоnьзование-файnа-итоговой-конфигурации\"><a href=\"https://cli.vuejs.org/ru/guide/webpack.html#%D0%B8%D1%81%D0%BF%D0%BEn%D1%8C%D0%B7%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D1%84%D0%B0%D0%B9n%D0%B0-%D0%B8%D1%82%D0%BE%D0%B3%D0%BE%D0%B2%D0%BE%D0%B9-%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D0%B8\">#</a>Использование файла итоговой конфигурации</h2>\r\n\r\n<p>Некоторым инструментам может потребоваться файл итоговой конфигурации webpack, например для IDE или утилит командной строки, которым необходимо указывать путь до конфигурации webpack. В таком случае вы можете использовать следующий путь:</p>\r\n\r\n<pre>\r\n<code>&lt;projectRoot&gt;/node_modules/@vue/cli-service/webpack.config.js\r\n</code></pre>\r\n\r\n<p>Этот файл динамически разрешается и экспортирует ту же конфигурацию webpack, которая используется в командах&nbsp;<code>vue-cli-service</code>, в том числе из плагинов и даже ваших пользовательских конфигураций.</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-11 17:29:08','2020-05-11 19:57:00',1,NULL),(3,'bootstrap в laravel','bootstrap-v-laravel','Как подключить bootstrap 4 в laravel суыв','<p><code>dfrewr e3re</code></p>\r\n\r\n<p> </p>\r\n\r\n<p><code>grest trewt </code>​​​​​​​</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -5px; top: 60px;\">\r\n<div class=\"gtx-trans-icon\"> </div>\r\n</div>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-11 18:17:17','2020-05-13 13:03:18',1,NULL),(4,'Установка kint-php через Composer для bitrix','ustanovka-kint-php-cherez-composer-dlya-bitrix','Как подключить и использовать composer в проекте bitrix','<p>1. В папку local скачиваем файл&nbsp;<a href=\"https://getcomposer.org/composer.phar\">composer.phar</a>&nbsp;</p>\r\n\r\n<p>2. Выполняем команду&nbsp;<code> php composer.phar init</code></p>\r\n\r\n<p>3. Добавляем в файл composer.json</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">{\r\n    \"autoload\": {\r\n        \"psr-4\": {\r\n            \"Lib\\\\\": \"lib/\"\r\n        }\r\n    },\r\n    \"require\": {\r\n        \"kint-php/kint\": \"^3.3\"\r\n    }\r\n}\r\n</code></pre>\r\n\r\n<p>4. Выполняем&nbsp;<code>php composer.phar install</code></p>\r\n\r\n<p>5. В файле <code>init.php</code> подключаем&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">require $_SERVER[\"DOCUMENT_ROOT\"] . \"/local/vendor/autoload.php\";</code></pre>\r\n\r\n<p>6. В шаблоне выводим переменную в&nbsp; <code>d($variable_one, $variable_two)</code></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -1px; top: 497px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-12 19:25:42','2020-05-25 15:18:02',1,120),(5,'Свой service provider добавление в корзину Битрикс','svoy-service-provider-dobavlenie-v-korzinu-bitriks',NULL,'<p>1. Получаем корзину текущего пользователя&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">$basket = \\Bitrix\\Sale\\Basket::loadItemsForFUser(\r\n		\\Bitrix\\Sale\\Fuser::getId(),\r\n		\\Bitrix\\Main\\Context::getCurrent()-&gt;getSite()\r\n);</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. Проверяем пуста корзина или нет. И добавляем в корзину и присваемаем свои провайдер цен</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">if ($item = $basket-&gt;getExistsItem(\'catalog\', $productId)){\r\n	$item-&gt;setField(\'QUANTITY\', $item-&gt;getQuantity() + $quantity);\r\n}else{\r\n	$item = $basket-&gt;createItem(\'catalog\', $productId);\r\n	$item-&gt;setFields([\r\n		\'QUANTITY\' =&gt; $quantity,\r\n	    \'CURRENCY\' =&gt; \\Bitrix\\Currency\\CurrencyManager::getBaseCurrency(),\r\n		\'LID\' =&gt; \\Bitrix\\Main\\Context::getCurrent()-&gt;getSite(),\r\n		\'PRODUCT_PROVIDER_CLASS\' =&gt; \'CCatalogProductProviderCustom\',\r\n		//\'CUSTOM_PRICE\' =&gt; \'Y\',\r\n	]);\r\n}</code></pre>\r\n\r\n<p>3. Проверяем результат и возвращаем&nbsp;<code class=\"inner\">json</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">$result = $basket-&gt;save();\r\nif($result-&gt;isSuccess()){\r\n	echo \\Bitrix\\Main\\Web\\Json::encode(array(\r\n		\"status\" =&gt; true\r\n	));\r\n}</code></pre>\r\n\r\n<p>4. В файле <code class=\"inner\">init.php</code> создаём свой класс и наследуем от&nbsp;<code class=\"inner\"> CCatalogProductProvider&nbsp;</code></p>\r\n\r\n<p>5. Переопределяем родительский метод&nbsp;<code>$result = parent::GetProductData($params)</code></p>\r\n\r\n<p>6. Получаем тип цен и проверяем доступные для пользователя</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">CModule::IncludeModule(\"catalog\");\r\n\r\nclass CCatalogProductProviderCustom extends CCatalogProductProvider\r\n{\r\n	public static function GetProductData($params)\r\n	{\r\n		//Получение готового массива цен\r\n		$result = parent::GetProductData($params);\r\n		$OPTION_CURRENCY = \\Bitrix\\Currency\\CurrencyManager::getBaseCurrency();\r\n		global $USER;\r\n		$arPriceID = array();\r\n		$pp = array();\r\n		$arPriceFilter = array(\"PRODUCT_ID\" =&gt; $params[\"PRODUCT_ID\"], \"CAN_ACCESS\" =&gt; \"Y\");\r\n\r\n		$dbPrice = CPrice::GetList(\r\n			array(),\r\n			$arPriceFilter,\r\n			false,\r\n			false,\r\n			array(\"ID\", \"CATALOG_GROUP_ID\", \"PRICE\", \"CURRENCY\", \"QUANTITY_FROM\", \"QUANTITY_TO\", \"CAN_BUY\")\r\n		);\r\n\r\n\r\n		while ($arPrice = $dbPrice-&gt;Fetch()){\r\n\r\n			$arDiscounts = CCatalogDiscount::GetDiscountByPrice(\r\n				$params[\"PRODUCT_ID\"],\r\n				$USER-&gt;GetUserGroupArray(),\r\n				\"N\",\r\n				SITE_ID\r\n			);\r\n\r\n			$arPrice[\"DISCOUNT_PRICE\"] = CCatalogProduct::CountPriceWithDiscount(\r\n				$arPrice[\"PRICE\"],\r\n				$arPrice[\"CURRENCY\"],\r\n				$arDiscounts\r\n			);\r\n\r\n			//convert currency\r\n			$arPrice[\"PRICE\"] = CCurrencyRates::ConvertCurrency($arPrice[\"PRICE\"], $arPrice[\"CURRENCY\"], $OPTION_CURRENCY);\r\n			$arPrice[\"DISCOUNT_PRICE\"] = CCurrencyRates::ConvertCurrency($arPrice[\"DISCOUNT_PRICE\"], $arPrice[\"CURRENCY\"], $OPTION_CURRENCY);\r\n\r\n			//round\r\n			$arPrice[\"PRICE\"] = \\Bitrix\\Catalog\\Product\\Price::roundPrice($arPrice[\"CATALOG_GROUP_ID\"], $arPrice[\"PRICE\"], $OPTION_CURRENCY);\r\n			$arPrice[\"DISCOUNT_PRICE\"] = \\Bitrix\\Catalog\\Product\\Price::roundPrice($arPrice[\"CATALOG_GROUP_ID\"], $arPrice[\"DISCOUNT_PRICE\"], $OPTION_CURRENCY);\r\n\r\n			//format prices\r\n			$arPrice[\"PRICE_FORMATED\"] = CCurrencyLang::CurrencyFormat($arPrice[\"PRICE\"], $OPTION_CURRENCY);\r\n			$arPrice[\"DISCOUNT_PRICE_FORMATED\"] = CCurrencyLang::CurrencyFormat($arPrice[\"DISCOUNT_PRICE\"], $OPTION_CURRENCY);\r\n\r\n			$pp[\"PRICES\"][$arPrice[\"CATALOG_GROUP_ID\"]][$arPrice[\"ID\"]] = $arPrice;\r\n			// $pp[\'PRICE\'] = $arPrice;\r\n			$arPriceID[$arPrice[\"CATALOG_GROUP_ID\"]] = $arPrice[\"CATALOG_GROUP_ID\"];\r\n		}\r\n\r\n		$minPrice = 0;\r\n		//check min price\r\n		if(!empty($pp[\"PRICES\"])){\r\n			foreach ($pp[\"PRICES\"] as $ipr =&gt; $arNextPrice){\r\n				//first price index for print\r\n				$firstPriceIndex = 0;\r\n				//each inserted prices\r\n				foreach ($arNextPrice as $ipp =&gt; $arNextPriceVariant){\r\n					//first price id\r\n					if(empty($firstPriceIndex)){\r\n						$tmpPriceID = $arNextPriceVariant[\"ID\"];\r\n					}\r\n					//save min price id\r\n					if(empty($minPrice) || $minPrice &gt;= $arNextPriceVariant[\"DISCOUNT_PRICE\"] &amp;&amp; $arNextPriceVariant[\"CAN_BUY\"] == \"Y\"){\r\n						$minPrice = $arNextPriceVariant[\"DISCOUNT_PRICE\"];\r\n						$minPriceID = $tmpPriceID;\r\n						$minPriceGroupID = $arNextPriceVariant[\"CATALOG_GROUP_ID\"];\r\n					}\r\n					$firstPriceIndex++;\r\n				}\r\n			}\r\n		}\r\n\r\n		if(!empty($minPriceID)){\r\n			//set min price\r\n			$pp[\"PRICES\"][$minPriceGroupID][$minPriceID][\"MIN_AVAILABLE_PRICE\"] = \"Y\";\r\n			$productPrice = $pp[\"PRICES\"][$minPriceGroupID][$minPriceID];\r\n		}else{\r\n			$productPrice = null;\r\n		}\r\n		//Манипуляции с ценами\r\n		$result = [\r\n			\'BASE_PRICE\' =&gt; $productPrice[\'PRICE\'],\r\n			\'PRICE\' =&gt; ($productPrice[\'DISCOUNT_PRICE\']) ? $productPrice[\'DISCOUNT_PRICE\'] : $productPrice[\'PRICE\'],\r\n		] + $result;\r\n\r\n		if ($productPrice[\'DISCOUNT_VALUE\']){\r\n			$result = [\r\n				\'DISCOUNT_PRICE\' =&gt; $productPrice[\'PRICE\'] - $productPrice[\'DISCOUNT_PRICE\'],\r\n				\'DISCOUNT_VALUE\' =&gt; $productPrice[\'DISCOUNT_VALUE\'],\r\n			] + $result;\r\n		}\r\n		//возвращаем готовый массив\r\n		return $result;\r\n	}\r\n}</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-13 13:46:06','2020-05-25 15:18:28',1,NULL),(6,'Добавление в корзину Bitrix','dobavlenie-v-korzinu-bitrix',NULL,'<p>1. В шаблоне компонента выводим ссылку с передачей в неё <code>ID&nbsp;</code>товара или <code>ID&nbsp;</code>торгового предложения</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">&lt;div class=\"mact\"&gt;\r\n	&lt;button class=\"mact__btn\" data-id=\"&lt;?=$arResult[\'ID\']?&gt;\" data-qnt=\"1\" &gt;в корзину&lt;/button&gt;\r\n&lt;/div&gt;</code></pre>\r\n\r\n<p>2. Обрабатываем событие <code class=\"inner\">click</code></p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">$(document).ready(function(){\r\n	let ajaxPath = \'/ajax.php\';\r\n\r\n	$(\'.mact__btn\').on(\'click\', function(e){\r\n		let productID = $(this).data(\'id\'),\r\n			 qnt			= $(this).data(\'qnt\');\r\n\r\n		$(this).addClass(\"loading\");\r\n		var gObj = {\r\n			act: \"addCart\",\r\n			id: productID,\r\n			q: qnt\r\n		};\r\n\r\n	\r\n		$.getJSON(ajaxPath, gObj).done(function(jData){	\r\n			console.log(jData);\r\n			if(jData.status == true){\r\n				$(\'.top__mini-cart\').html(jData.window_component);\r\n			}\r\n		 })\r\n		e.preventDefault();\r\n	})\r\n})</code></pre>\r\n\r\n<p>3. Создаём файл в корне сайта <code>ajax.php</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">&lt;?\r\n\r\n&lt;?define(\"STOP_STATISTICS\", true);?&gt;\r\n&lt;?define(\"NO_AGENT_CHECK\", true);?&gt;\r\n&lt;?require($_SERVER[\"DOCUMENT_ROOT\"].\"/bitrix/modules/main/include/prolog_before.php\");?&gt;\r\n&lt;?error_reporting(0);?&gt;\r\n&lt;?if(!empty($_GET[\"act\"])){\r\n    if(CModule::IncludeModule(\"catalog\") &amp;&amp; CModule::IncludeModule(\"sale\")){\r\n\r\n        if($_GET[\"act\"] == \"addCart\"){\r\n\r\n            //globals\r\n            global $APPLICATION;\r\n            //measure ratio\r\n            $addBasketQuantityRatio = $addBasketQuantity = 1;\r\n            $rsMeasureRatio = CCatalogMeasureRatio::getList(\r\n                array(),\r\n                array(\"PRODUCT_ID\" =&gt; intval($_GET[\"id\"])),\r\n                false,\r\n                false,\r\n                array()\r\n            );\r\n            if($arProductMeasureRatio = $rsMeasureRatio-&gt;Fetch()){\r\n                if(!empty($arProductMeasureRatio[\"RATIO\"])){\r\n                    $addBasketQuantityRatio = $addBasketQuantity = $arProductMeasureRatio[\"RATIO\"];\r\n                }\r\n            }\r\n\r\n            if(!empty($_GET[\"q\"]) &amp;&amp; $_GET[\"q\"] != $addBasketQuantity){\r\n                $addBasketQuantity = floatval($_GET[\"q\"]);\r\n            }\r\n\r\n            $product = array(\r\n                \'PRODUCT_ID\' =&gt; $productId,\r\n                \'QUANTITY\' =&gt; $quantity,\r\n            );\r\n\r\n    // Если нужно передать свойства корзины\r\n    /* если нужно использовать свойства корзины\r\n    $props = array(\r\n        array(\r\n            \"NAME\" =&gt; \"Номер конфигурации\",\r\n            \"CODE\" =&gt; \"HASH\",\r\n            \"VALUE\" =&gt; $hash,\r\n            \"SORT\" =&gt; \"100\",\r\n        ),\r\n        array(\r\n            \"NAME\" =&gt; \"Уникальный идентификатор\",\r\n            \"CODE\" =&gt; \"TIMESTAMP\",\r\n            \"VALUE\" =&gt; $uniqueId,\r\n            \"SORT\" =&gt; \"100\",\r\n        ),\r\n    ),\r\n    */\r\n    // $product[\'PROPS\'] = $props;\r\n\r\n    // Если нужно передать свой провайдер цен или свою цену\r\n    /*\r\n    $costomFields = array(\r\n        \'PRICE\'=&gt; 120.00,\r\n        \'CUSTOM_PRICE\'=&gt;\'Y\',\r\n        \'PRODUCT_PROVIDER_CLASS\'=&gt;\'CCatalogProductProviderCustom\', // это поле необходимо при \'CUSTOM_PRICE\'=&gt;\'Y\', иначе будет отображаться скидка от цены товара c PRODUCT_ID\r\n        \'CURRENCY\'=&gt;\'RUB\', // это нужно когда не указан \'PRODUCT_PROVIDER_CLASS\'\r\n    );\r\n    */\r\n\r\n                //addProduct\r\n$basketResult = Bitrix\\Catalog\\Product\\Basket::addProduct($product, $costomFields);\r\n\r\n\r\n                // check result\r\nif(!$basketResult-&gt;isSuccess()){\r\n    $errors = $basketResult-&gt;getErrorMessages();\r\n                        //print json\r\n    echo \\Bitrix\\Main\\Web\\Json::encode(array(\r\n        \"errors\" =&gt; $errors,\r\n        \"status\" =&gt; false\r\n    ));\r\n}else{\r\n    //start buffering\r\n    ob_start();\r\n\r\n    // Получаем mini корзину и сохраняем в буффер\r\n    $APPLICATION-&gt;IncludeComponent(\"bitrix:sale.basket.basket.line\", \"bootstrap_v5\", Array(\r\n       \"PATH_TO_BASKET\" =&gt; SITE_DIR.\"personal/cart/\",  // Страница корзины\r\n       \"PATH_TO_PERSONAL\" =&gt; SITE_DIR.\"personal/\", // Страница персонального раздела\r\n       \"SHOW_PERSONAL_LINK\" =&gt; \"N\",    // Отображать персональный раздел\r\n       \"SHOW_NUM_PRODUCTS\" =&gt; \"Y\", // Показывать количество товаров\r\n       \"SHOW_TOTAL_PRICE\" =&gt; \"Y\",  // Показывать общую сумму по товарам\r\n       \"SHOW_PRODUCTS\" =&gt; \"N\", // Показывать список товаров\r\n       \"POSITION_FIXED\" =&gt; \"N\",    // Отображать корзину поверх шаблона\r\n       \"SHOW_AUTHOR\" =&gt; \"Y\",   // Добавить возможность авторизации\r\n       \"PATH_TO_REGISTER\" =&gt; SITE_DIR.\"login/\",    // Страница регистрации\r\n       \"PATH_TO_PROFILE\" =&gt; SITE_DIR.\"personal/\",  // Страница профиля\r\n        ),\r\n    false\r\n);\r\n\r\n    $componentHTML = ob_get_contents();\r\n    //очищаем буффер\r\n    ob_end_clean();\r\n\r\n    //print json\r\n    echo \\Bitrix\\Main\\Web\\Json::encode(array(\r\n        \"window_component\" =&gt; $componentHTML,\r\n        \"status\" =&gt; true\r\n    ));\r\n}\r\n\r\n$rr = \'\';\r\n\r\n}\r\n}\r\n}\r\n?&gt;</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-14 09:04:12','2020-05-16 14:56:15',1,NULL),(7,'Passport.js в проекте на nuxt.js','passportjs-v-proekte-na-nuxtjs',NULL,'<p>Подключаем пакеты</p>\r\n\r\n<p><code class=\"inner\">\"passport\": \"^0.4.0\",</code><br />\r\n<code class=\"inner\">\"passport-local\": \"^1.0.0\"</code>,</p>\r\n\r\n<p>В index.js файла настроек сервера&nbsp;</p>\r\n\r\n<p><code class=\"inner\">const passport = require(\"passport\");</code></p>\r\n\r\n<p>Подключаем базы для хранения сессий</p>\r\n\r\n<p><code class=\"inner\">const mongoose = require(\"mongoose\");</code></p>\r\n\r\n<p><code class=\"inner\">const session = require(\"express-session\");</code></p>\r\n\r\n<pre>\r\n<code class=\"language-javascript\">  // Session store\r\n  app.use(\r\n    session({\r\n      secret: \"secrenkey\",\r\n      resave: true,\r\n      saveUninitialized: false,\r\n      store: new MongoStore({\r\n        mongooseConnection: mongoose.connection\r\n      }),\r\n      cookie: {\r\n        maxAge: 180 * 60 * 1000\r\n      }\r\n    })\r\n  );\r\n  app.use(passport.initialize());\r\n  app.use(passport.session());\r\n\r\n // Connect passport congif  require(\"./auth_config\")(passport);</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-17 07:46:25','2020-05-24 17:02:54',1,NULL),(8,'fontawesome для laravel','fontawesome-dlya-laravel','Как подключить fontawesome через npm для laravel','<p>1.&nbsp;<code class=\"inner\">npm i @fortawesome/fontawesome-free -D</code></p>\r\n\r\n<p>2 в файле <code class=\"inner\">scss</code>&nbsp;подключаем нужные стили&nbsp;</p>\r\n\r\n<p><code class=\"inner\">@import \'~@fortawesome/fontawesome-free/scss/fontawesome.scss\';</code></p>\r\n\r\n<p><code class=\"inner\">@import \'~@fortawesome/fontawesome-free/scss/solid.scss\';</code></p>\r\n\r\n<p><code class=\"inner\">@import \'~@fortawesome/fontawesome-free/scss/regular.scss\';</code></p>\r\n\r\n<p>3. Для вывода иконок используем&nbsp;</p>\r\n\r\n<p><code class=\"inner\">&nbsp;&lt;i class=\"fas fa-folder-open\"&gt;&lt;/i&gt;</code>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-18 17:14:02','2020-05-18 17:38:51',1,400),(9,'Подтверждение пользователя','podtverzhdenie-polzovatelya',NULL,'<p>Делаем раздел доступным только для тех пользователь кто подтвёрждёт. Подтверждение делаем&nbsp; через поля в таблице user&nbsp;</p>\r\n\r\n<p><code class=\"inner\">confirmation_token</code> и <code class=\"inner\">time_token</code></p>\r\n\r\n<p>1. Выполняем <code class=\"inner\">php artisan make:auth</code></p>\r\n\r\n<p>2. Добавляем поля в миграцию <code class=\"inner\">create_user</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">  Schema::create(\'users\', function (Blueprint $table) {\r\n     $table-&gt;increments(\'id\');\r\n     $table-&gt;boolean(\'is_confirmed\')-&gt;default(false);\r\n     $table-&gt;string(\'name\');\r\n     $table-&gt;string(\'confirmation_token\')-&gt;unique()-&gt;nullable();\r\n     $table-&gt;timestamp(\'time_token\', 0)-&gt;nullable();\r\n     $table-&gt;string(\'email\')-&gt;unique();\r\n     $table-&gt;string(\'password\');\r\n     $table-&gt;rememberToken();\r\n     $table-&gt;timestamps();\r\n   });</code></pre>\r\n\r\n<p>3. Выполняем<code class=\"inner\">php artisan migrate</code>, если понадотся внести правки в миграцию то выполняем&nbsp;<code class=\"inner\">php artisan migrate:refrash</code> все таблицы будет перезаписаны, данные удалены.</p>\r\n\r\n<p>4. Создаём свой <code class=\"inner\">middleware</code>&nbsp;</p>\r\n\r\n<pre>\r\n<code>php artisan make:middleware CheckConfirmedUser\r\n</code></pre>\r\n\r\n<p>В нем проверяем подтверждён ли пользователь&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">namespace App\\Http\\Middleware;\r\n\r\nuse Closure;\r\n\r\nclass CheckUserConfirmedEmail\r\n{\r\n    /**\r\n     * Handle an incoming request.\r\n     *\r\n     * @param  \\Illuminate\\Http\\Request  $request\r\n     * @param  \\Closure  $next\r\n     * @return mixed\r\n     */\r\n    public function handle($request, Closure $next)\r\n    {\r\n    	if(! $request-&gt;user()-&gt;confirmed())\r\n		{\r\n\r\n			return redirect()-&gt;route(\'request-confirm-email\', $request-&gt;user());\r\n		 }\r\n        return $next($request);\r\n    }\r\n}</code></pre>\r\n\r\n<p>Подключаем <code class=\"inner\">middleware</code> в файле <code class=\"inner\">Kernel.php (app/Http/Kernel.php)</code> в блоке&nbsp;</p>\r\n\r\n<pre>\r\n<code>protected $routeMiddleware = [\r\n...\r\n\'confirmed\' =&gt; \\App\\Http\\Middleware\\CheckConfirmedUser::class\r\n]</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5. Добавляем в Route путь по которому будем проверять. Авторизован ли пользователь через <code class=\"inner\">auth</code> и подтверждён через&nbsp;<code class=\"inner\">confirmed</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">Route::get(\'/products\', \'ProductsController@index\')-&gt;middleware([\'auth\', \'confirmed\']);</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>4. Создаём 3 <code class=\"inner\">route</code> для проверки.</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">// Получение формы для отправки токена\r\nRoute::get(\'/users/{user}/request-confirmation\', \'UserConfirmationController@request\')-&gt;name(\'request-confirm-email\')-&gt;middleware(\'auth\');\r\n// Обработка формы и отправки токена на почту\r\nRoute::post(\'/users/{user}/send-confirmation-email\', \'UserConfirmationController@send\')-&gt;name(\'send-confirm-email\')-&gt;middleware(\'auth\');\r\n// Проверка токена и подтверждение пользователя\r\nRoute::get(\'/users/{user}/confirm-email/{token}\', \'UserConfirmationController@confirm\')-&gt;name(\'confirm-email\');</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-20 08:19:11','2020-05-25 14:02:49',0,NULL),(10,'Скачиваем скрипты по cron','skachivaem-skripty-po-cron',NULL,'<p>1. Создаём файл который будем вызывать по <code class=\"inner\">cron</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">&lt;?\r\nfunction download($file_url, $save_to){\r\n	$content = file_get_contents($file_url);\r\n	file_put_contents($save_to, $content);\r\n}\r\n\r\n\r\n\r\ndownload(\'https://mc.yandex.ru/metrika/watch.js\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/watch.js\");\r\n\r\n\r\ndownload(\'https://connect.facebook.net/signals/config/826186120885137?v=2.8.33&amp;r=stable\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/fbevents_stable.js\");\r\ndownload(\'https://connect.facebook.net/en_US/fbevents.js\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/fbevents.js\");\r\n\r\n\r\ndownload(\'https://www.googletagmanager.com/gtag/js?id=UA-117938148-1\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/gtag.js\");\r\ndownload(\'http://www.google-analytics.com/analytics.js\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/analytics.js\");\r\n\r\n\r\ndownload(\'https://vk.com/js/api/openapi.js?159\', $_SERVER[\"DOCUMENT_ROOT\"].\"/js/downloads/openapi.js\");\r\n\r\n\r\n?&gt;</code></pre>\r\n\r\n<p>2. Добавляем задачу на <code class=\"inner\">cron</code>&nbsp;в файле crontab</p>\r\n\r\n<p>Приписываем путь до скрипта</p>\r\n\r\n<p><code class=\"inner\">0 0 * * * bitrix /usr/bin/php -f /home/bitrix/ext_www/site.ru/cron/downloadJs.php</code></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. Подключаем скипты уже локально&nbsp;</p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -76px; top: 599px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-20 20:28:27','2020-05-20 20:29:16',1,NULL),(11,'Smarty в Shop-script','smarty-v-shop-script',NULL,'<p>&nbsp;</p>\r\n\r\n<p><code class=\"inner\">{if $wa-&gt;currentUrl(false, true) == $wa_app_url} Это главная {/if} -&nbsp;</code>Получение главной&nbsp;</p>\r\n\r\n<p><code class=\"inner\">{$wa_active_theme_path}</code> - путь до активной темы (не родительской), для подключения файлов</p>\r\n\r\n<p><code class=\"inner\">{$wa_active_theme_url}</code> - урл до активной темы (не родительской), пополучения ссылки</p>\r\n\r\n<p><code class=\"inner\">{$wa_theme_url},&nbsp;{$wa_parent_theme_url}&nbsp;</code>- урл до родительской темы</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-22 12:31:22','2020-05-24 12:21:37',0,NULL),(12,'Получить элементы инфоблока D7','poluchit-elementy-infobloka-d7',NULL,'<p>Получение активных или не активных товаров, и выборка свойства <code class=\"inner\">article</code>&nbsp; используя <code class=\"inner\">D7</code></p>\r\n\r\n<pre>\r\n<code class=\"language-php\">$arResult = array();\r\n$filter = array(\r\n	\'IBLOCK_ID\' =&gt; 2,\r\n	\'=ACTIVE\' =&gt; Catalog\\ProductTable::STATUS_YES // По наличию \r\n	//\'=ACTIVE\' =&gt; Catalog\\ProductTable::STATUS_NO // Нет в наличии \r\n)\r\n$select = array(\r\n	\'ID\', \'XML_ID\', \'IBLOCK_ID\', \'ACTIVE\'\r\n)\r\n\r\n$dbItems = \\Bitrix\\Iblock\\ElementTable::getList(array(\r\n	\'select\' =&gt; $select,\r\n	\'filter\' =&gt; $filter,\r\n	\'limit\' =&gt; 500\r\n));\r\n\r\nwhile ($arItem = $dbItems-&gt;fetch()){\r\n	$arResult[$arItem[\'ID\']][] =  $arItem;\r\n	// get properties ARTICLE\r\n	$dbProperty = CIBlockElement::getProperty(\r\n		$arItem[\'IBLOCK_ID\'],\r\n		$arItem[\'ID\'],\r\n		array(),\r\n		array(\"CODE\"=&gt;\"ARTICLE\")\r\n	);\r\n	while($arProperty = $dbProperty-&gt;Fetch()){  \r\n	 	$arResult[$arItem[\'ID\']][ARTTICLE] = $arProperty;\r\n	}\r\n}</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-05-27 05:57:25','2020-05-27 08:31:22',1,NULL),(13,'SPL Итераторы','spl-iteratory','Пример использования RecursiveIteratorIterator для создания меню любой вложенности','<pre>\r\n<code class=\"language-php\">&lt;?php\r\n$menu = array(\r\n    \"Home\" =&gt; \"lemon\", \r\n    \"Portfolio\" =&gt; [\r\n        \'progect one\'=&gt; \'t-shurt\', \r\n        \'progect two\'=&gt; \'cap\'\r\n    ], \r\n    \'Team\' =&gt; [\r\n        \"Coders\" =&gt; [\"Alex\", \"Roman\"], \r\n        \r\n    ]\r\n);\r\n\r\n// Наследуем и переопределяем методы основного класса\r\n// для отображения вложенных категорий\r\n\r\nclass MyList extends RecursiveIteratorIterator{\r\n	function beginChildren(){\r\n		echo \"&lt;ul&gt;\\n\";\r\n	}\r\n	function endChildren(){\r\n		echo \"&lt;/ul&gt;&lt;/li&gt;\\n\";\r\n	}\r\n}\r\n\r\n$it = new MyList(new RecursiveArrayIterator($menu), RecursiveIteratorIterator::SELF_FIRST);\r\n\r\necho \"&lt;ul&gt;\\n\";\r\nforeach ($it  as $key =&gt; $value) {\r\n	if($it-&gt;hasChildren()){\r\n		echo \"&lt;li&gt;{$key}\\n\"; continue;\r\n	}\r\n	echo \"&lt;li&gt;{$value}&lt;/li&gt;\\n\";\r\n}\r\necho \"&lt;/ul&gt;\\n\";\r\n?&gt;</code></pre>\r\n\r\n<p><strong>Результат вывода</strong></p>\r\n\r\n<p><img alt=\"\" src=\"/storage/article/1591268635snip-20200604140325png\" style=\"width: 268px; height: 190px;\" /></p>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: -57px; top: 784px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-06-04 08:01:12','2020-06-04 08:15:38',0,110),(14,'Получаем значение свойства с типом справочник','poluchaem-znachenie-svoystva-s-tipom-spravochnik',NULL,'<pre>\r\n\r\nПодключаем значение свойства с типом справочник\r\n</pre>\r\n\r\n<pre>\r\n<code class=\"language-php\">\\Bitrix\\Main\\Loader::IncludeModule(\'highloadblock\');\r\n\r\n\r\n$res = CIBlockElement::GetProperty($iBlock_id, $elemant_id, array(\"sort\" =&gt; \"asc\"), Array(\'CODE\'=&gt;\'PROPERTY_CODE\')); // свойство с типом справочник\r\n\r\nwhile ($ob = $res-&gt;Fetch()) {\r\n	if($ob[\'PROPERTY_TYPE\'] == \'S\' &amp;&amp; $ob[\'USER_TYPE\'] == \'directory\'){\r\n      	$hv = getPropertyHighloadBlock($ob[\'USER_TYPE_SETTINGS\'][\'TABLE_NAME\'], $ob[\'VALUE\']);\r\n    }\r\n}\r\n\r\n\r\nfunction getPropertyHighloadBlock($tableName, $val){\r\n	$hlblock = \\Bitrix\\Highloadblock\\HighloadBlockTable::getList(\r\n	  array(\"filter\" =&gt; array(\r\n		\'TABLE_NAME\' =&gt; $tableName\r\n	  ))\r\n	)-&gt;fetch();\r\n	if (isset($hlblock[\'ID\'])){\r\n	$entity = \\Bitrix\\Highloadblock\\HighloadBlockTable::compileEntity($hlblock);\r\n	$entity_data_class = $entity-&gt;getDataClass();\r\n	$res = $entity_data_class::getList( array(\'filter\'=&gt;array( \'UF_XML_ID\' =&gt; $val)) );\r\n\r\n	  if ($item = $res-&gt;fetch())\r\n	  {\r\n		if (count($item) &gt; 1) $result = implode(\', \', $item);\r\n		else $result = current($item);\r\n		return $item[\'UF_NAME\'];\r\n	  }\r\n	}\r\n    return \'\';\r\n}</code></pre>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-06-04 18:10:49','2020-06-04 20:04:01',0,400),(15,'Получение значений свойств по типам','poluchenie-znacheniy-svoystv-po-tipam','Получение значений свойств по типам','<pre>\r\n<code class=\"language-php\">//Подключаем пространство имён\r\n\r\nuse \\Bitrix\\Main\\Loader;\r\nuse \\Bitrix\\Highloadblock as HL;\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Получаем все элементы инфоблока</p>\r\n\r\n<pre>\r\n<code>// Массив свойств которые пропускаем\r\n$DisallowSKUPropsCodes = [\r\n  \'CML2_ATTRIBUTES\', \r\n  \'CML2_TRAITS\',\r\n  \'CML2_TAXES\',\r\n  \'MORE_PHOTO\',\r\n  \'FILES\',\r\n  \'CML2_LINK\',\r\n  \'CML2_BAR_CODE\',\r\n  \'CML2_ARTICLE\',\r\n  \'CML2_BASE_UNIT\',\r\n  \'SEOVALUE\'\r\n];\r\n\r\n\r\n\r\n\r\n// Поля \r\n$arSelect = [\'ID\', \'IBLOCK_ID\', \'NAME\', \'CODE\', \'ACTIVE\', \'DATE_ACTIVE_FROM\', \'TIMESTAMP_X\'];\r\n$arFilter = [\r\n   \'IBLOCK_ID\' =&gt; 123, \'ACTIVE\' =&gt; \'Y\',\r\n    //\'DATE_MODIFY_FROM \' =&gt; date(\'\')\r\n];\r\n$result = [];\r\n $res = CIBlockElement::GetList([], $arFilter, false, [\'nPageSize\' =&gt; 999999, \'iNumPage\' =&gt; 1], $arSelect);\r\n\r\n\r\nwhile($ob = $res-&gt;GetNextElement()) {\r\n $item = $ob-&gt;GetFields();\r\n $item[\'PROPS\'] = [];\r\n\r\n // Получаем свойства\r\n $props = $ob-&gt;GetProperties();\r\n \r\n foreach($props as $prop) {\r\n  // Проверяем что значение есть и убираем свойства которые не нужны\r\n  if ($prop[\'VALUE\'] &amp;&amp; !in_array($prop[\'CODE\'], $DisallowSKUPropsCodes)) {\r\n    \r\n   //S - строка, N - число, F - файл, L - список, E - привязка к элементам, G - привязка к группам.\r\n   $isString    = ($prop[\'PROPERTY_TYPE\'] == \'S\' &amp;&amp; !$prop[\'USER_TYPE\']) ? true : false;\r\n   $isDirectory = ($prop[\'PROPERTY_TYPE\'] == \'S\' &amp;&amp; $prop[\'USER_TYPE\'] == \'directory\') ? true : false;\r\n   $isList      = ($prop[\'PROPERTY_TYPE\'] == \'L\') ? true : false;\r\n   $isNumber    = ($prop[\'PROPERTY_TYPE\'] == \'N\') ? true : false;\r\n\r\n   if ($isDirectory) $ItemProp[\'VALUE\'] = getDirectoryPropValue($prop[\'USER_TYPE_SETTINGS\'][\'TABLE_NAME\'], $prop[\'VALUE\']);\r\n   \r\n    $item[\'PROPS\'][] = [\r\n     \'NAME\'  =&gt; $ItemProp[\'NAME\'],\r\n     \'VALUE\' =&gt; $ItemProp[\'VALUE\'],\r\n    ];\r\n    $result[] = $item;\r\n  }\r\n  return $result\r\n}</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Функция для получения значения свойства типа справочник</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<pre>\r\n<code class=\"language-php\">getDirectoryPropValue($table, $value)\r\n{\r\n  Loader::IncludeModule(\'highloadblock\');\r\n  $result = [];\r\n  $hlblock = HL\\HighloadBlockTable::getRow([\'filter\' =&gt; [\'=TABLE_NAME\' =&gt; $table]]);\r\n  if ($hlblock) {\r\n   $entity      = HL\\HighloadBlockTable::compileEntity($hlblock);\r\n   $entityClass = $entity-&gt;getDataClass();\r\n   $arRecords   = $entityClass::getList([\'filter\' =&gt; [\'UF_XML_ID\' =&gt; $value]]);\r\n   $ResRecords = [];\r\n   foreach ($arRecords as $record) $ResRecords[] = $record[\'UF_NAME\'];\r\n     if (count($ResRecords) &gt; 1) $result = implode(\', \', $ResRecords);\r\n     else $result = current($ResRecords);\r\n   }\r\n   return $result;\r\n}\r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>',NULL,NULL,NULL,NULL,1,NULL,1,NULL,'2020-06-04 18:24:12','2020-06-04 18:36:43',0,401);
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Bitrix','bitrix',0,1,NULL,NULL,'/storage/categories/15896464241589021756undraw_Firmware_jw6u.png','2020-05-11 17:27:04','2020-05-16 13:27:07'),(2,'Shop-script','shop-script',0,1,NULL,NULL,'/storage/categories/1589756446undraw_code_thinking_1jeh.png','2020-05-11 17:27:17','2020-05-17 20:00:48'),(3,'Design','design',0,1,NULL,NULL,'/storage/categories/1590005470undraw_landscape_mode_53ej.png','2020-05-11 18:16:18','2020-05-20 17:11:12'),(4,'Javascript','javascript',0,1,NULL,NULL,'/storage/categories/1589742371undraw_code_thinking_1jeh.png','2020-05-17 08:53:14','2020-05-17 16:06:26'),(5,'Laravel','laravel',0,1,NULL,NULL,'/storage/categories/1589832794undraw_laravel_and_vue_59tp.png','2020-05-18 17:13:26','2020-05-18 17:13:26'),(6,'Php','php',0,1,NULL,NULL,'/storage/categories/1591268390undraw_developer_activity_bv83.png','2020-06-04 07:59:53','2020-06-04 07:59:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoryables`
--

DROP TABLE IF EXISTS `categoryables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoryables` (
  `category_id` int(11) NOT NULL,
  `categoryable_id` int(11) NOT NULL,
  `categoryable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoryables`
--

LOCK TABLES `categoryables` WRITE;
/*!40000 ALTER TABLE `categoryables` DISABLE KEYS */;
INSERT INTO `categoryables` VALUES (2,2,'App\\Article'),(3,3,'App\\Article'),(1,6,'App\\Article'),(5,8,'App\\Article'),(1,10,'App\\Article'),(2,11,'App\\Article'),(4,7,'App\\Article'),(5,9,'App\\Article'),(1,4,'App\\Article'),(1,5,'App\\Article'),(1,12,'App\\Article'),(1,1,'App\\Article'),(6,13,'App\\Article'),(1,15,'App\\Article'),(1,14,'App\\Article');
/*!40000 ALTER TABLE `categoryables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_tags`
--

DROP TABLE IF EXISTS `meta_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `h1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_text` text COLLATE utf8mb4_unicode_ci,
  `canonical` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `robots` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `changefreq` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_tags`
--

LOCK TABLES `meta_tags` WRITE;
/*!40000 ALTER TABLE `meta_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2020_04_21_132112_create_categories_table',1),(4,'2020_04_21_174650_create_articles_table',1),(5,'2020_04_21_200433_create_categoryable_table',1),(6,'2020_04_28_003018_add_front_to_aticles',1),(7,'2020_05_01_135513_create_tags_table',1),(8,'2020_05_01_140204_create_article_tag_table',1),(9,'2020_05_02_214839_create_roles_table',1),(10,'2020_05_02_215926_create_user_role_table',1),(11,'2020_05_03_232721_add_sort_field_articles',1),(12,'2020_05_07_223237_create_meta_tags_table',1),(13,'2020_05_08_090121_create_menus_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'php','2020-05-11 18:27:08','2020-05-11 18:27:08'),(2,'js','2020-05-11 18:27:13','2020-05-11 18:27:13'),(3,'landing','2020-05-11 18:27:21','2020-05-11 18:27:21'),(4,'composer','2020-05-12 20:50:36','2020-05-12 20:50:36'),(5,'debug','2020-05-12 20:51:00','2020-05-12 20:51:00'),(6,'Nuxt.js','2020-05-17 08:53:36','2020-05-17 08:53:36'),(7,'Vue.js','2020-05-17 08:53:44','2020-05-17 08:53:44'),(8,'Node.js','2020-05-17 08:54:11','2020-05-17 08:54:11');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1,NULL,NULL);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'burns','chedia@mail.ru','$2y$10$1ywY9cLahu5gvB8jbFNWqOjZpSAFb3QPK2abXnVONYBt/Xb0LEmr.','Bue0wOaGqpUxQxAJsdIpJjP42M5YJQzf5hWUTF3XC4nU2Mulhsuao8CDfX49','2020-05-11 17:24:13','2020-05-11 17:24:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 14:05:26
