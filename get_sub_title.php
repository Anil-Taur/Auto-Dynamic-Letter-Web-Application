<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();


if ($_SERVER["REQUEST_METHOD"] == "POST") {

  $titleid = $_POST['maintitleid'];
  $sql = "SELECT *FROM sub_title WHERE title_id='$titleid'";
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
