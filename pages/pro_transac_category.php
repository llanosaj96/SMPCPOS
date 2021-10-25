<?php
include'../includes/connection.php';
session_start();


$cat = @$_POST['prodcategory'];
$sql = mysqli_query($db, "SELECT * FROM category WHERE CNAME = '$cat' ");
if (mysqli_num_rows($sql) >= 1) {
  echo " <script> alert('Category already exist!'); </script> ";
  header("location: pos.php");
}else{
  $sql1 = mysqli_query($db, "INSERT INTO category VALUES ('', '$cat') ");
  if ($sql1) {
    echo " <script> alert('Category successfully added.'); </script> ";
    header("location: pos.php");
  }
}



     
?>

<!-- <script type="text/javascript">
  alert("Success.");
  window.location = "pos.php";
</script>



 -->
