

<?php
include'../includes/connection.php';
$recno = @$_POST['rec_no'];
$output = '';
$sql = mysqli_query($db,  " SELECT * FROM delivery WHERE rec_no='$recno' ");
if ($sql) {
	while ($row = mysqli_fetch_assoc($sql)) {
	$nm = $row['NAME'];
	$pc = $row['PRODUCT_CODE'];
	$qty = $row['QTY'];
  $sl = $row['SALES'];
  $ttl = $qty - $sl;


	$output .= "
  <form action='return_delivery_now.php' method='POST'>
  <table class='table table-bordered' width='100%' cellspacing='0'>
         <tr>
           <th width='5%;'>Product Code</th>
           <th width='15%;'>Name</th>
           <th width='5%;'>Qty</th>
           <th width='5%;'>Edit</th>
         </tr>
         <tr>
         	<td> $pc </td>
         	<td> $nm </td>
         	<td> $ttl </td>
      
         	<td> <input type='hidden' id='recs' name='recs' value='$recno'> <input type='text' id='return_value' name='return_value' required autocomplete='off' class='form-control'> </td>
         </tr>
         
         </table>
          Returned Empty cases
          <input type='text' id='return_cases_value' name='return_cases_value' required autocomplete='off' class='form-control'>
        <input type='submit' style='color: green; float:right;' class='btn btn-default' value='Confirm'> </form>";

}
}else{
	echo "error";
}


echo $output;


?>