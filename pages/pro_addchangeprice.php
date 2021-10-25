<?php

include'../includes/connection.php';


$c_variant = @$_POST['category_variant'];
$p_type = @$_POST['price_type'];
$n_price = @$_POST['new_price'];

if ($p_type == 'regular') {
	$sql = mysqli_query($db, "UPDATE product SET REGULAR_PRICE='$n_price' WHERE PRODUCT_ID='$c_variant' ");
	if ($sql) {
		echo "<script> alert('Regular price changed !') </script>";
	}
}else if ($p_type =='selling') {
	$sql2 = mysqli_query($db, "UPDATE product SET PRICE='$n_price' WHERE PRODUCT_ID='$c_variant' ");
	if ($sql2) {
		echo "<script> alert('Selling price changed !') </script>";
	}
}else{
	echo "<script> alert('Error saving !') </script>";
}


?>
<script type="text/javascript">
	window.location.href='product.php';
</script>