<?php
include('../includes/connection.php');

      			$zz = $_POST['id'];
      			$pc = $_POST['prodcode'];
      			$pname = $_POST['prodname'];
            $pr = $_POST['selling_price'];
            $del_date = $_POST['delivery_date'];
         
            $instock_new = $_POST['quantity'];
            date_default_timezone_set('Asia/Manila');
            $set_date = date('Y-m-d', strtotime($del_date));
            $dm = date('m', strtotime($del_date));
            $dd = date('d', strtotime($del_date));
            $dy = date('Y', strtotime($del_date));
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

            if (empty($pr) || empty($del_date) || empty($instock_new) || empty($opt)) {
            	echo "<script> alert('All fields required!'); </script>";
            }else{


            	$sql1 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_CODE='$pc' AND ENDED !='YES' ");
            	while ($row1 = mysqli_fetch_assoc($sql1)) {
            		$oh = $row1['ON_HAND'];

            		if ($oh < $instock_new) {
            			echo "<script> alert('Quantity is beyond stock! Unable to add!'); </script>";
            		}else{

            			$sql212 = mysqli_query($db, "SELECT * FROM delivery WHERE PRODUCT_CODE='$pc' AND MONTH(DELIVERY_DATE) = '$dm' AND DAY(DELIVERY_DATE) ='$dd' AND YEAR(DELIVERY_DATE) = '$dy' AND STAT='0' ");


            			if (mysqli_num_rows($sql212) == 1) {
            				echo "<script> alert('Product already exist!'); </script>";
            			}else{


            				
            				$SQL = mysqli_query($db, "INSERT INTO delivery VALUES(null, '$del_date', '$pc', '$pname', '$instock_new', '$pr', 'PENDING', '', '', '','') ");

                     $sql211 = mysqli_query($db, "UPDATE product SET REF_ID='1', DELIVERY_QTY='$instock_new', DELIVERY_RETURNED=0 WHERE PRODUCT_CODE='$pc' and DELIVERY_DATE='$set_date' AND ENDED !='YES' ");


							if ($SQL) {
									echo "<script> alert('Added to delivery list !'); </script>";
								}

            			}

            		}


            	}

            	
            }

			
		
							
?>	
	<script type="text/javascript">
			
			window.location = "product.php";
		</script>