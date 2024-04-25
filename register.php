<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $username = $_POST['username'];
  $email = $_POST['email'];
  $password = $_POST['password'];

  $sql = "INSERT INTO userdata (username,email,password)VALUES('$username','$email','$password')";
  $result = $conn->query($sql);
  if ($result) {
    $userinfo[0]['STATUS'] = "Success";
  } else {
    $userinfo[0]['STATUS'] = "Fail";
  }

  echo json_encode($userinfo);
}
