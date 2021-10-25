<?php
	
	$total = '';
	$cust_amnt = '';
	$change = '';
	$total = @$_POST['total'];
	$cust_amnt = @$_POST['cust_amount'];
	$change = $cust_amnt - $total;
	echo $change;

?>