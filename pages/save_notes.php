<?php

include'../includes/connection.php';


$notes = @$_POST['notes'];


$query = mysqli_query($db, "UPDATE notes SET NOTES='$notes' WHERE stat='1' ");
if ($query) {
	echo $notes;
}




?>