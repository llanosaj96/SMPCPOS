<?php
	include'../includes/connection.php';

	if (isset($_POST["id"])) {
		foreach ($_POST["id"] as $id) {

			$sql0 = mysqli_query($db, "DELETE FROM delivery WHERE rec_no = '".$id."' ");
			if ($sql0) {
				echo "<script> alert('Item deleted successfully!') </script>";
			}
		}
	}
?>
<script type="text/javascript">
	window.location = "delivery.php";
</script>