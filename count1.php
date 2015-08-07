<?php
    $userInfo=new Mysqli("localhost","root","",'users');
    $count = $_GET['count'];
    $q1 = mysqli_query($userInfo, "UPDATE usertable SET count ='$count' WHERE usr='udhav' ");
    if ($q1 == TRUE)
    	echo "done";
?> 