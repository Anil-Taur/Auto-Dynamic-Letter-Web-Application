<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();
//$_POST = json_decode(file_get_contents('php://input'),true);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $title_name = $_POST['title_name'];
  $icon_name = $_POST['icon_name'];

  $sql = "INSERT INTO letter_title(title_name,icon_name)VALUES('$title_name','$icon_name')";
  $result = $conn->query($sql);
  if ($result) {
    $userinfo[0]['STATUS'] = "Success";
  } else {
    $userinfo[0]['STATUS'] = "Fail";
  }

  echo json_encode($userinfo);
}
