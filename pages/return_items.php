<?php

	include'../includes/connection.php';


	$dDate1 = @$_POST['return_date'];
  $dDate = date("Y-m-d", strtotime($dDate1));
	$table = '';

	$sql = mysqli_query($db, "SELECT * FROM delivery WHERE DELIVERY_DATE='$dDate' AND STAT=1 AND STATUS!='COMPLETED' AND RETURNED='0' ");
  if ($sql) {
    while ($row = mysqli_fetch_assoc($sql)) {
    $nm = $row['NAME'];
    $qty = $row['QTY'];
    $sl = $row['SALES'];
    $rets = $row['RETURNED'];
    $ttl = $qty - $sl;
    $stat = $row['STATUS'];
    $ttlll = $sl + $rets;
    $ttl = $qty - $sl;
    $pc = $row['PRODUCT_CODE'];
    $rn = $row['rec_no'];
    $ed = "";
    
    if ($ttlll != $qty) {
      $ed = "<a href='#' id='editQ' data-role='return' data-id='$rn' data-target='#returnDeliveryModal'>edit</a>";
    }else{
      $ed= "";
    }

     $color = '';
            if ($stat == 'TO DELIVER') {
              $color = "<label style='color: red;'> $stat </label>";
            }else{
               $color = "<label style='color: green;'> $stat </label>";
            }

    $table = " <table class='table table-bordered' width='100%' cellspacing='0'>
         <tr id='$rn'>
           <th> Select </th>
           <th width='15%;'>Date</th>
           <th>Name</th>
           <th width='5%;'>Qty</th>
           <th>Status</th>
         </tr>
         <tr id='$pc'>
          <td> $ed </td>
          <td> $dDate </td>
          <td> $nm </td>
          <td> $ttl </td>
          <td> $color </td>
         </tr>
         </table> ";

         echo $table;


  }
  }else{
    echo "NODATA";
  }
	




?>