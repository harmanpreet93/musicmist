<?php
    $userInfo = new Mysqli("localhost","root","",'users');
    $msg = $_GET['msg'];

    $username = 'udhav';

    $prev = mysqli_query($userInfo, "SELECT `feedback` FROM `usertable` WHERE `usr`='$username' ");
    $row = mysqli_fetch_array($prev, MYSQL_BOTH);
	$fback = $row['feedback'];

	if ($fback)
    	$fback = $fback . '<br>' . $msg;

    else
    	$fback = $msg; 
    mysqli_query($userInfo, "UPDATE `usertable` SET `feedback` = '$fback' WHERE `usr`='$username' ");

?>