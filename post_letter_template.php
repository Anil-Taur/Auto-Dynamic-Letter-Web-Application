<?php
header("Access-Control-Allow-Origin: *");
include('config.php');
$userinfo = array();
//$_POST = json_decode(file_get_contents('php://input'),true);

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $sub_title_id = $_POST['template_text'];
    $sub_title_id = $_POST['sub_title_id'];

    $sql = "INSERT INTO letter_template(template_text,sub_title_id)VALUES('$template_text','$sub_title_id')";
    $result = $conn->query($sql);
    if ($result) {
        $userinfo[0]['STATUS'] = "Success";
    } else {
        $userinfo[0]['STATUS'] = "Fail";
    }

    echo json_encode($userinfo);
}
