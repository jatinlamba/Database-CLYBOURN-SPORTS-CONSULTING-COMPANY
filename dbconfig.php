<?php
$host = "localhost";
$user = "root";
$password = "";
$datbase = "consulting";
$db = mysql_connect($host,$user,$password);
mysql_select_db($datbase);
if( ! $db = mysql_connect($host,$user,$password) ) {
    die('No connection: ' . mysqli_connect_error());
}
else
echo "Database Connection is successful";
?>
