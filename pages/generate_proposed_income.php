<?php

include'../includes/connection.php';


if (isset($_POST['pi_beverage'])) {


	// GENERATE PROJECTED INCOME FOR BEVERAGES
	$sql1 = mysqli_query($db, "SELECT SOLD, PRICE FROM product WHERE CATEGORY_ID='1' ");
	while ($row1 = mysqli_fetch_assoc($sql1)) {
		$sold1 = $row1['SOLD'];
		$price1 = $row1['PRICE'];
		
		
	}

}

if (isset($_POST['pi_agrivet'])) {


	// GENERATE PROJECTED INCOME FOR AGRIVET


}

if (isset($_POST['pi_po'])) {


	// GENERATE PROJECTED INCOME FOR PO


}

if (isset($_POST['pi_catering'])) {


	// GENERATE PROJECTED INCOME FOR CATERING


}






?>


<!-- 	<script type="text/javascript">
			alert("Projected income generated successfully.");
			window.location = "projected_income.php";
		</script>

 -->