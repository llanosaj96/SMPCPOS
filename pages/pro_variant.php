<?php
include'../includes/connection.php';
session_start();
  

  $cat_var = @$_POST['category_variant'];
  $variant = @$_POST['new_variant'];

  $sql = mysqli_query($db, "INSERT INTO variation VALUES ('', '$variant', '$cat_var') ");         
  if ($sql) {
    echo "<script> alert('variant name added!'); </script>";
  }

?>
    <script type="text/javascript">
      window.location = "product.php";
    </script>
</div>