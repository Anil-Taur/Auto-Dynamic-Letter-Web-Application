<?php
define('SERVERNAME', 'localhost');
define('USERNAME', 'root');
define('PASSWORD', '');
define('DATABASE', 'autoletter');

$conn = mysqli_connect(SERVERNAME, USERNAME, PASSWORD, DATABASE) or die(mysqli_error($conn));

// if($conn){
//     echo "DB Connect";

// }else{
//     echo "DB NOt connected";
// }
