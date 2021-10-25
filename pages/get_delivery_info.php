<?php

	include'../includes/connection.php';


	$dDate = @$_POST['delivery_date'];
	$table = '';

	$sql = mysqli_query($db, "SELECT * FROM delivery WHERE DELIVERY_DATE='$dDate' AND STAT=0 ");
	while ($row = mysqli_fetch_assoc($sql)) {
		$nm = $row['NAME'];
		$qty = $row['QTY'];
		$stat = $row['STATUS'];
		$pc = $row['PRODUCT_CODE'];
		$rn = $row['rec_no'];
		$SQL2 = mysqli_query($db, "SELECT SUM(QTY) as total_qty FROM delivery WHERE DELIVERY_DATE='$dDate' AND STAT=0 ");
		$rows = mysqli_fetch_assoc($SQL2);
		$ttl = $rows['total_qty'];
		 $color = '';
            if ($stat == 'PENDING') {
              $color = "<label style='color: red;'> $stat </label>";
            }else{
               $color = "<label style='color: green;'> $stat </label>";
            }

		$table = " <table class='table table-bordered' width='100%' cellspacing='0'>
         <tr>
           <th> Select </th>
           <th width='15%;'>Date</th>
           <th>Name</th>
           <th width='5%;'>Qty</th>
           <th>Status</th>
         </tr>
         <tr id='$rn'>
         	<td> <input type='checkbox' name='add_delivery' class='add_delivery' value='$rn'> </td>
         	<td width='15%;'> $dDate </td>
         	<td> $nm </td>
         	<td width='5%;'> $qty </td>
         	<td> $color </td>
         </tr>
         </table>
         ";


         echo $table;
         echo "<div style='display:none' class='total_qty'> <b>TOTAL:</b> $ttl </div> ";


	}




?>