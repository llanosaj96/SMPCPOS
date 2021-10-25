<?php

include'../includes/connection.php';

$num = @$_POST['recs'];
$qty = @$_POST['return_value'];
$cases = @$_POST['return_cases_value'];

$sql = mysqli_query($db, "SELECT * FROM delivery WHERE rec_no='$num' ");
if ($sql) {
	while ($row = mysqli_fetch_array($sql)) {
	$p_id = $row['PRODUCT_CODE'];
	$retrn = $row['RETURNED'];
	$qq = $row['QTY'];
	$sales = $row['SALES'];
	$new_ret = $retrn + $qty;
	$total = $sales + $retrn;
	$sql1 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_CODE='$p_id' AND ENDED !='YES' ");

	if ($sql1) {
			while ($row1 = mysqli_fetch_assoc($sql1)) {

				$oh = $row1['ON_HAND'];
				$del_qty = $row1['DELIVERY_QTY'];
				$new_qty = $del_qty - $qty;
				$new = $oh + $qty;
				$ret_cases = $row1['RETURNED_CASES_TOTAL'];
				$new_returned_cases = $ret_cases + $cases;

				
			
			if ($total == $qq) {

				if ($qty > $total) {
					echo "<script> alert('Quantity exceeded! Unable to return.') </script>";
				}else{
					$sql4 = mysqli_query($db, "UPDATE product SET ON_HAND='$new', DELIVERY_RETURNED='$qty', RETURNED_CASES_TOTAL='$new_returned_cases' WHERE PRODUCT_CODE='$p_id' AND ENDED !='YES'  ");
					$sql5 = mysqli_query($db, "UPDATE delivery SET RETURNED='$new_ret', RETURNED_CASES='$cases', STATUS='COMPLETED' WHERE rec_no='$num' ");
					echo "<script> alert('Items returned successful.') </script>";
					
				}
				
				

			}else{

				if ($qty > $qq && $qty > $sales) {
					echo "<script> alert('Quantity exceeded! Unable to return.....') </script>";
				}else{
					$sql2 = mysqli_query($db, "UPDATE product SET ON_HAND='$new', DELIVERY_RETURNED='$qty', DELIVERY_QTY='$new_qty', RETURNED_CASES_TOTAL='$new_returned_cases' WHERE DELIVERY_ID='$num' AND ENDED !='YES' ");
					$sql3 = mysqli_query($db, "UPDATE delivery SET RETURNED='$new_ret', RETURNED_CASES='$cases', STATUS='COMPLETED' WHERE rec_no='$num' ");
					echo "<script> alert('Items returned successful.') </script>";
					
				}
				
			}

		}



	}else{
		echo "error";
	}

}

}else{
	echo "error";
}


?>

	<script type="text/javascript">
			
			window.location = "delivery.php";
		</script>