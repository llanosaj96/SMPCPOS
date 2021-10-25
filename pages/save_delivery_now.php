<?php
	include'../includes/connection.php';

	if (isset($_POST["id"])) {
		foreach ($_POST["id"] as $id) {

			$sql0 = mysqli_query($db, "SELECT * FROM delivery WHERE rec_no = '".$id."' ");
			if ($sql0) {
				while ($row0 = mysqli_fetch_assoc($sql0)) {
				$p_code = $row0['PRODUCT_CODE'];
				$pr = $row0['PRICE'];
				$qty = $row0['QTY'];
				$sqlA = mysqli_query($db, "SELECT ON_HAND, VARIANT_ID, PRODUCT_ID, CATEGORY_ID, NAME FROM product WHERE PRODUCT_CODE='$p_code' ");
				if ($sqlA) {
					while ($rowA = mysqli_fetch_assoc($sqlA)) {
					$OH = $rowA['ON_HAND'];
					$v_id = $rowA['VARIANT_ID'];
					$p_id = $rowA['PRODUCT_ID'];
					$c_id = $rowA['CATEGORY_ID'];
					$nm = $rowA['NAME'];
					$new_onhand = $OH-$qty;

					echo $OH;
					echo " ";
					echo $v_id;
					echo " ";
					echo $p_id;
					echo " ";
					echo $c_id;
					echo " ";
					echo $nm;
					echo " ";
					echo $new_onhand;
				}
				}else{
					echo "ERROR";
				}
				


			}
			}else{
				echo "ERROR";
			}
			
		}
	}
?>