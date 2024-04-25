<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();
//$_POST = json_decode(file_get_contents('php://input'),true);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title_id = $_POST['title_id'];
    $sub_title = $_POST['sub_title'];

    $sql = "INSERT INTO sub_title(subtitle,title_id)VALUES('$title_id','$sub_title')";
    $result = $conn->query($sql);
    if ($result) {
        $userinfo[0]['STATUS'] = "Success";
    } else {
        $userinfo[0]['STATUS'] = "Fail";
    }

    echo json_encode($userinfo);
}
