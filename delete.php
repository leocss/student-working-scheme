<?php
include 'config/config.php';
include 'config/session.php';
//include 'class/dbclass.php';
include 'config.php';
//include ('printform.php');

$conn = mysql_connect('localhost', 'root', '');
if (!$conn) {
    die('Could not connect: ' . mysql_error());
}
mysql_select_db("attendance_system", $conn);



//include("config.php");


?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>

    <script>
        function MM_popupMsg(msg) { //v1.0
            alert(msg);
        }
    </script>
    <!--        end Data tabel-->

</head>

<body>

<div id="toyo" onfocus="MM_popupMsg('Are you sure you want to delete Employee?')">
    <?php

    $id = $_REQUEST['EmpID'];


    // sending query
    mysql_query("DELETE FROM employee_detail WHERE EmpID = '$id'")
    or die(mysql_error());

    header("Location: EmployeeList.php");

    ?>

</div>
</body>
</html>