<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();


if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $subtitleid = $_POST['sub_title_id'];


  $sql = "SELECT *FROM letter_template WHERE sub_title_id ='$subtitleid' ";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {

      $userinfo[] = $row;
    }
  } else {
    $userinfo[0]['STATUS'] = "Fail";
  }

  echo json_encode($userinfo);
}
