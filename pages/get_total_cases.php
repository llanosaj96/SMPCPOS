<?php

	include'../includes/connection.php';


	$dDate = @$_POST['delivery_date'];

	$SQL2 = mysqli_query($db, "SELECT SUM(QTY) as total_qty FROM delivery WHERE DELIVERY_DATE='$dDate' AND STAT=0 ");
	$rows = mysqli_fetch_assoc($SQL2);
	$ttl = $rows['total_qty'];
	
	echo "<b> TOTAL: $ttl</b>";

?>