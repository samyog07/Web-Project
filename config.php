<?php


require_once 'pdo-lib/PDOModel.php';

/**
 * Constants
 */
define('C_NAME','Sherpa Swiss');

define('BASE_URL','http://www.ktmrush.com/sherpa-swiss/');

/**
 * Database Connections
 */
$mydb = new PDOModel(); //create object of the PDOModel class

//connect to database
//$mydb->connect("localhost", "root", "root", "db_sherpaswiss");//connect to database
$mydb->connect("localhost", "ktmrush_sherpa", "#u@9zGtGq", "ktmrush_sherpa");

date_default_timezone_set('Asia/Kathmandu');

$cookie_expire = time() + 20;

$currentDate = date('Y-m-d H:i:s');

$today = date('Y-m-d');

