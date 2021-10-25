<?php

include'../includes/connection.php';

$pass = @$_POST['password'];
$upass = trim($pass);
 $h_upass = sha1($upass);
$sql = mysqli_query($db, "SELECT * FROM users WHERE password='$h_upass' ");
while ($row = mysqli_fetch_assoc($sql)) {
	$admin_pass = $row['PASSWORD'];
	if ($h_upass == $admin_pass) {
		echo "1";
	}else{
		echo "0";
	}
}

?>