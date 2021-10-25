<?php
include'../includes/connection.php';
?>
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $pc = $_POST['prodcode'];
              $name = $_POST['name'];
              $desc = $_POST['description'];
              $qty = $_POST['quantity'];
              $oh = $_POST['onhand'];
              $oh2 = '';
              $pr = $_POST['price']; 
              $cat = $_POST['category'];
              $supp = $_POST['supplier'];
              $dats = $_POST['datestock'];
              $var = $_POST['variant'];
              $reg_price = $_POST['regular_price'];
              $opt = $_POST['opt'];
              $invent = "YES";
              $sold = $_POST['total_sold_item_cash'];
              $sold2 = $_POST['total_sold_item_credit'];
              $month = date("m",strtotime($dats));
              $year = date("Y",strtotime($dats));
              $day = date("d",strtotime($dats));
              $total_sold = ((double)$sold + (double)$sold2);
              if (empty($oh)) {
                $oh2 = 0;
              }else{
                $oh2 = $oh;
              }



              $opt2 = '';
              if ($opt == 1) {
                $opt2 = "per case";
              }else if ($opt == 2) {
                $opt2 = "per bottle";
              }else if ($opt == 3) {
                $opt2 = "per box";
              }else if ($opt == 4) {
                $opt2 = "per sack";
              }elseif ($opt == 0) {
                $opt2 = "per item";
              }else{
                $opt2 = "";
              }
        
                    $query = "INSERT INTO product
                              (PRODUCT_ID, PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, BALANCE, PRICE, CASEORBOTTLE, CATEGORY_ID, VARIANT_ID, SUPPLIER_ID, DATE_STOCK_IN, REGULAR_PRICE, ENDED, DATE_STOCK_IN_MONTH, DATE_STOCK_IN_YEAR,DATE_STOCK_IN_DAY ,SOLD, CASH, CREDIT)
                              VALUES (Null,'$pc','$name','$desc','$qty','$oh2','$pr','$opt2' , '$cat','$var','$supp','$dats','$reg_price', '$invent', '$month', '$year','$day' , '$total_sold', '$sold', '$sold2')";
                    mysqli_query($db,$query)or die ('Error in updating product in Database '.$query);
                    $query2 = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$pc', '$dats', '') ");
                    if ($query2) {
                      echo "<script> alert('Successfully added!'); </script>";
                    }

            ?>
              <script type="text/javascript">window.location = "inventory.php";</script>
          </div>

<?php
include'../includes/footer.php';
?>