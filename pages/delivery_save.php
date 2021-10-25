<?php
	include'../includes/connection.php';


	$datee = @$_POST['delivery_date'];

	$result1 = mysqli_query($db, "SELECT * FROM delivery WHERE DELIVERY_DATE = '$datee' AND STAT='0' ");
	if ($result1) {
		while ($row1 = mysqli_fetch_assoc($result1)) {
		$recN = $row1['rec_no'];
		$p_code = $row1['PRODUCT_CODE'];	
		$qty = $row1['QTY'];
		$result2 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_CODE='$p_code' AND ENDED !='YES' ");
		while ($row2 = mysqli_fetch_assoc($result2)) {
			$OH = $row2['ON_HAND'];
			$new_onhand = $OH-$qty;
			$result3 = mysqli_query($db, "UPDATE product SET ON_HAND='$new_onhand', DELIVERY_ENDED='NO', REF_ID='1', DELIVERY_ID='$recN', DELIVERY_QTY='$qty' WHERE PRODUCT_CODE='$p_code' AND ENDED !='YES' ");
			if ($result3) {
				
				$result4 = mysqli_query($db, "UPDATE delivery SET STAT='1', STATUS='OUT FOR DELIVERY' WHERE DELIVERY_DATE = '$datee' ");
							if ($result4) {
								// echo "saved";
							}else{
								// echo "not saved";
							}

			}
		}


	}
	echo "Items out for delivery!";
	}else{
		echo "NO DELIVERY DATE FOUND!";
}
	
	
	

?>