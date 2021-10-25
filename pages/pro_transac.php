<?php
include'../includes/connection.php';
?>
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $pc = @$_POST['prodcode'];
              $name = @$_POST['name'];
              $desc = @$_POST['description'];
              $qty = @$_POST['quantity'];
              $oh = @$_POST['onhand'];
              $pr = @$_POST['price']; 
              $cat = @$_POST['category'];
              $supp = @$_POST['supplier'];
              $dats = @$_POST['datestock'];
              $var = @$_POST['variant'];
              $reg_price = @$_POST['regular_price'];
              $opt = @$_POST['opt'];
              $invent = 'NO';
              $sold = @$_POST['total_sold_item'];
              $month = date("m",strtotime($dats));
              $year = date("Y",strtotime($dats));
              $day = date("d", strtotime($dats));
              $control_no1 = @$_POST['po_control_no_1'];
              $control_no2 = @$_POST['po_control_no_2'];
              $total_cards = ($control_no2 - $control_no1) + 1;
              if ($reg_price == '') {
                $reg_price = '0';
              }

              $new_name = '';
              if ($control_no1 !='' && $control_no2 !='') {
                $name2 = "$control_no1 - $control_no2 "; 
              }else{
                $name2 = $name;
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
                              (PRODUCT_ID, PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, ON_HAND, PRICE, CASEORBOTTLE, CATEGORY_ID, VARIANT_ID, SUPPLIER_ID, DATE_STOCK_IN, REGULAR_PRICE, ENDED, DATE_STOCK_IN_MONTH, DATE_STOCK_IN_YEAR, DATE_STOCK_IN_DAY, SOLD)
                              VALUES (Null,'$pc','$name','$desc','0','$oh','$pr','$opt2' , '$cat','$var','$supp','$dats','$reg_price', '$invent', '$month', '$year','$day' , '$sold')";
                    mysqli_query($db,$query)or die ('Error in updating product in Database '.$query);
                    $query2 = mysqli_query($db, "INSERT INTO inventory_update VALUES ('', '$pc', '$dats', '') ");

                    if ($control_no1 != '' && $control_no1 != '') {
                      mysqli_query($db, "INSERT INTO po_cards (PRODUCT_ID, CONTROL_NO1, CONTROL_NO2, TOTAL_CARDS) VALUES ('$pc', '$control_no1','$control_no2', '$qty') ");
                    }

            ?>
             <!--  <script type="text/javascript">window.location = "product.php";</script> -->
          </div>

<?php
include'../includes/footer.php';
?>