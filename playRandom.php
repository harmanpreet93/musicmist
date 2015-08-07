<?php

require 'demo_ext.php';

$userInfo = new Mysqli("localhost","root","",'users');
$trackInfo = new Mysqli("localhost","root","",'alpha');


function playFromTable($selGenre,$selIndex) {
	global $buffer;
	global $userInfo;
	global $trackInfo;
	
	$id = mysqli_query($trackInfo, "SELECT trackid, name, artist FROM $selGenre WHERE id='$selIndex' ");
	$row = mysqli_fetch_array($id, MYSQL_BOTH);
	$buffer['trackid'][] = $row['trackid'];			//add track ids to the buffer
	$buffer['name'][] = $row['name'];				//add tracks to the buffer
	$buffer['artist'][] = $row['artist'];			//add artist to the buffer

	/*$name = mysqli_query($trackInfo, "SELECT name FROM $selGenre WHERE id='$selIndex' ");
	$row2 = mysqli_fetch_array($name, MYSQL_BOTH);
	$buffer['name'][] = $row2['name'];				//add tracks to the buffer

	$artist = mysqli_query($trackInfo, "SELECT artist FROM $selGenre WHERE id='$selIndex' ");
	$row3 = mysqli_fetch_array($artist, MYSQL_BOTH);
	$buffer['artist'][] = $row3['artist'];			//add artist to the buffer*/

}


$buffer = array( 									//initialise fresh list to store one set of songs
	"trackid" => array(),
	"name" => array(),
	"artist" => array(),
     );
										
$username = 'udhav';

/*if (isset($_SESSION['usr'])) {
			$username = $_SESSION['usr'];
		}
		/*else
			header("Location: mainPage.php"); */

$countVal = mysqli_query($userInfo, "SELECT `count` FROM `usertable` WHERE `usr`='$username' ");
$countArr = mysqli_fetch_array($countVal, MYSQL_BOTH);
$count = $countArr['count'];

$pendingList = mysqli_query($userInfo, "SELECT `currList` FROM `usertable` WHERE `usr`='$username' ");
$row3 = mysqli_fetch_array($pendingList, MYSQL_BOTH);
$buffer = json_decode($row3['currList'],true);								//if there are tracks remaining they wil comprise the buffer

if (sizeof($buffer['trackid']) > 0) {

	array_splice($buffer['trackid'],0,$count);											//remove trackid, name, artist
	array_splice($buffer['name'],0,$count);
	array_splice($buffer['artist'],0,$count);
}

if (sizeof($buffer['trackid']) < 1) {						//no pending tracks

	for ($j=0; $j<3; $j++) {							//populate the list of 7 categories thrice and prepare a list of 21 tracks

		$indices = UniqueRandomNumbersWithinRange(1,7,7);		//get a fresh order of the 7 categories for each cycle

		$songIndices = mysqli_query($userInfo, "SELECT trackOrder FROM usertable WHERE usr='$username' ");

		$row2 = mysqli_fetch_array($songIndices, MYSQL_BOTH);

		$decodedIndices = json_decode($row2['trackOrder']);				//array containing the remaining song indices

		if (sizeof($decodedIndices) < 1) {								//in case all songs have been parsed.. regenerate a new set of indices for the user
			$decodedIndices = UniqueRandomNumbersWithinRange(1,15,15);
		}

		$songIndex = $decodedIndices[0];
		array_splice($decodedIndices,0,1);
		$encodedIndices = json_encode($decodedIndices);

		mysqli_query($userInfo, "UPDATE usertable SET trackOrder='$encodedIndices' WHERE usr='$username' ");

		for ($i = 0; $i<sizeof($indices); $i++) {
			$index = $indices[$i];
			$selected = mysqli_query($trackInfo, "SELECT genre FROM genres WHERE id='$index' ");
			$row = mysqli_fetch_array($selected, MYSQL_BOTH);
			playFromTable($row['genre'],$songIndex);						//call function playFromTable with each genre one by one
		}
	}
}

$encodedBuffer = json_encode($buffer,true);

$q = mysqli_query($userInfo, "UPDATE usertable SET currList='$encodedBuffer' WHERE usr='$username' ");
echo ($encodedBuffer);			//sending the list to javascript

mysqli_close($userInfo);
mysqli_close($trackInfo);

?>