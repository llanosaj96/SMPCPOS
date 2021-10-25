<?php
include'../includes/connection.php';
	

$page = '';
$cat = @$_POST['category'];
$sql = mysqli_query($db, "SELECT * FROM variation WHERE category_id='$cat' ");
 while ($row = mysqli_fetch_assoc($sql)) {
 $name = $row['variant'];
 $rec_no = $row['rec_no'];

  $page = "<option value='$rec_no'>$name</option>";

 echo $page;
}



?>
 