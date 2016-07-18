<?php 

$db['db_host'] = "localhost";
$db['db_user'] = "student";
$db['db_pass'] = "student";
$db['db_name'] = "automobili";

foreach($db as $key => $value){
define(strtoupper($key), $value);
}

$connection = mysqli_connect(DB_HOST, DB_USER,DB_PASS,DB_NAME);


$query = "SET NAMES utf8";
mysqli_query($connection,$query);


?>