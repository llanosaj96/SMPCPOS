<?php
include('../includes/connection.php');

			$zz = $_POST['id'];
			$pc = $_POST['prodcode'];
			$pname = $_POST['prodname'];
			$original_date_stock_in = @$_POST['date_stock_in'];
            $desc = $_POST['description'];
            $regprice = $_POST['reg_price'];
            $ohbalance = $_POST['beg_balance'];
            $pr = $_POST['selling_price'];
            $sel_old = $_POST['selling_price_old'];
            $instock_new = $_POST['in_stocks'];
            $new_on_hand = ((double)$instock_new + (double)$ohbalance);
            $old_total = $sel_old * $ohbalance;
            date_default_timezone_set('Asia/Manila');
            $supp = @$_POST['supplier'];
			$vDate = @$_POST['in_stock_date'];
			$month = date("m",strtotime($vDate));
            $year = date("Y",strtotime($vDate));
            $day = date("d", strtotime($vDate));
			$ttl_stock = '';
			$opt = @$_POST['opt'];
			$opt2 = '';
              if ($opt == 1) {
                $opt2 = "per case";
              }else if ($opt == 2) {
                $opt2 = "per bottle";
              }else if ($opt == 3) {
                $opt2 = "per box";
              }else if ($opt == 4) {
                $opt2 = "per sack";
              }elseif ($opt == 0) {
                $opt2 = "per item";
              }else{
                $opt2 = "";
              }
       $cont1 = $_POST['po_customer1'];
       $cont2 = $_POST['po_customer2'];


       if ($cont1 !='' && $cont2 !='') {
       		
       		$SQL = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_CODE='$pc' AND ENDED!='YES' ");
			while ($row = mysqli_fetch_assoc($SQL)) {
				$qty = $row['QTY_STOCK'];
				$ttl_stock = ((double)$qty + (double)$instock_new);
				$date_stock_in = $row['DATE_STOCK_IN'];
				$month_stock = date("m",strtotime($date_stock_in));
				$oh = $row['ON_HAND'];
				$cat = $row['CATEGORY_ID'];
				$var = $row['VARIANT_ID'];


				$next_onh = ((double)$instock_new + (double)$oh);
              	$vDate22 = '';
              	$vDate22 = date('Hisd', time());

              	if (empty($instock_new) || empty($supp) || empty($opt2)) {
              		echo "<script> alert('Please fill-up all fields!'); </script>";
              	}else{

					// echo "Walay beginning balance kay same month";

					$query = "UPDATE product set NAME='$pname',QTY_STOCK='$ttl_stock' , DESCRIPTION='$desc', REGULAR_PRICE='$regprice', PRICE='$pr', ON_HAND='$new_on_hand', OLD_PRICE='$sel_old', OLD_TOTAL='$old_total' WHERE PRODUCT_CODE ='$pc' AND DATE_STOCK_IN='$original_date_stock_in' ";
					$result = mysqli_query($db, $query) or die(mysqli_error($db));
						if ($result) {
							$sql = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$pc', '$vDate', '$instock_new') ");

							 mysqli_query($db, "INSERT INTO po_cards (PRODUCT_ID, CONTROL_NO1, CONTROL_NO2, TOTAL_CARDS) VALUES ('$pc', '$cont1','$cont2', '$qty') ");

						}

						echo "<script> alert('Update Product Successful.'); </script>";


              	}


				



			}




       }else{

       	$SQL = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_CODE='$pc' AND ENDED!='YES' ");
			while ($row = mysqli_fetch_assoc($SQL)) {
				$qty = $row['QTY_STOCK'];
				$ttl_stock = ((double)$qty + (double)$instock_new);
				$date_stock_in = $row['DATE_STOCK_IN'];
				$month_stock = date("m",strtotime($date_stock_in));
				$oh = $row['ON_HAND'];
				$cat = $row['CATEGORY_ID'];
				$var = $row['VARIANT_ID'];


				$next_onh = ((double)$instock_new + (double)$oh);
              	$vDate22 = '';
              	$vDate22 = date('Hisd', time());

              	if (empty($instock_new) || empty($supp) || empty($opt2)) {
              		echo "<script> alert('Please fill-up all fields!'); </script>";
              	}else{

					// echo "Walay beginning balance kay same month";

					$query = "UPDATE product set NAME='$pname',QTY_STOCK='$ttl_stock' , DESCRIPTION='$desc', REGULAR_PRICE='$regprice', PRICE='$pr', ON_HAND='$new_on_hand', OLD_PRICE='$sel_old', OLD_TOTAL='$old_total' WHERE PRODUCT_CODE ='$pc' AND DATE_STOCK_IN='$original_date_stock_in' ";
					$result = mysqli_query($db, $query) or die(mysqli_error($db));
						if ($result) {
							$sql = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$pc', '$vDate', '$instock_new') ");

							

						}

						echo "<script> alert('Update Product Successful.'); </script>";


              	}


				



			}

       }


			
		
 		

							
?>	
	<script type="text/javascript">
			
			window.location = "product.php";
		</script>