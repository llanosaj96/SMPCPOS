<?php
include'../includes/connection.php';
session_start();
  

  $cat = @$_POST['new_category'];
  $sql = mysqli_query($db, "SELECT * FROM category WHERE CNAME = '$cat' ");
  if (mysqli_num_rows($sql) >= 1) {
    echo "<script> alert('Category name already exist!'); </script>";
  }else{
    $sql1 = mysqli_query($db, "INSERT INTO category VALUES ('', '$cat') ");
    if ($sql1) {
      echo "<script> alert('Category name added!'); </script>";
    }
  }
              


?>
    <script type="text/javascript">
      window.location = "product.php";
    </script>
</div>