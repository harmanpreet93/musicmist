<?php
    $userInfo=new Mysqli("localhost","root","",'users');
    $count = $_GET['count'];
    mysqli_query($userInfo, "UPDATE `usertable` SET `count` ='$count' WHERE `usr`='udhav' ");

?> 