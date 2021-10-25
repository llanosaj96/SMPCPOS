<?php
include('../includes/connection.php');
			$zz = $_POST['idd'];
            $a = $_POST['qty'];
            $b = $_POST['oh'];
            $pcode = '';
			date_default_timezone_set('Asia/Manila');
			$vDate = date('Y-m-d');
	 			$query = 'UPDATE product set QTY_STOCK="'.$a.'", ON_HAND="'.$b.'" WHERE
					PRODUCT_ID ="'.$zz.'"';
					$result = mysqli_query($db, $query) or die(mysqli_error($db));
				if ($result) {
					$sql1 = mysqli_query($db, 'SELECT * FROM product WHERE PRODUCT_ID="'.$zz.'" ');
					while ($row1 = mysqli_fetch_assoc($sql1)) {
						$pcode = $row1['PRODUCT_CODE'];
						$sql = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$pcode', '$vDate') ");
					}
				}
?>	
	<script type="text/javascript">
			alert("You've Update Product Successfully.");
			window.location = "inventory.php";
		</script>