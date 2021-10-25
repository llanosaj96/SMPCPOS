<table class="table table-bordered" id="print_price_table" width="100%" cellspacing="0">
  <tr>
    <th>Product Name</th>
    <th>Regular Price</th>
    <th>Selling Price</th>
  </tr>
   <?php 

   include'../includes/connection.php';

  $table = '';
  $cat = '';
  $sort = @$_POST['price_sort'];



  $sql10 = mysqli_query($db, "SELECT DISTINCT PRICE,REGULAR_PRICE,NAME,VARIANT_ID FROM product WHERE CATEGORY_ID='$sort' ");
  while ($row10 = mysqli_fetch_assoc($sql10)) {
    $pri = $row10['PRICE'];
    $name = $row10['NAME'];
    $spri = $row10['REGULAR_PRICE'];
    $varID = $row10['VARIANT_ID'];
    $pri1 = number_format($pri, 2);
    $spri1 = number_format($spri, 2);

    $sql11 = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='$varID' ");
    while ($row11 = mysqli_fetch_assoc($sql11)) {
      $varnt = $row11['variant'];
      echo "<tr>";
      echo "<td> $name <i>($varnt)</i> </td>";
      echo "<td> ₱ $spri1 </td>";
      echo "<td> ₱ $pri1 </td>";
      echo "</tr>";


    }

  }

?>
</table>