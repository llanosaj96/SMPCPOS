<!-- <div class="form-group">
    As of: <span id="current_date" class="current_date">   </span>
</div> -->

<?php
        include'../includes/connection.php';

    $category = @$_POST['category'];
    $year = @$_POST['year'];
    $month = @$_POST['month'];
    $day = @$_POST['day'];
    $cname = '';
    $dstock1 = '';
    $month1 = '';
    if ($month == '01') {
        $month1 = 'January';
    }else if($month == '02'){
        $month1 = 'February';
    }else if($month == '03'){
        $month1 = 'March';
    }else if($month == '04'){
        $month1 = 'April';
    }else if($month == '05'){
        $month1 = 'May';
    }else if($month == '06'){
        $month1 = 'June';
    }else if($month == '07'){
        $month1 = 'July';
    }else if($month == '08'){
        $month1 = 'August';
    }else if($month == '09'){
        $month1 = 'September';
    }else if($month == '10'){
        $month1 = 'October';
    }else if($month == '11'){
        $month1 = 'November';
    }else if($month == '12'){
        $month1 = 'December';
    }

    $query11 = mysqli_query($db, "SELECT * FROM product p  JOIN category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE p.CATEGORY_ID='$category' GROUP BY PRODUCT_CODE");
    while ($row11 = mysqli_fetch_assoc($query11)) {
        $cname = $row11['CNAME'];

    }


?>
<div id="header" style="display: none;">
    <br/> <br/>
<center>
  <div class="card-body">
     <img src="../img/smpcemoji.png" style="margin-bottom: -37px; margin-left: -40px;">
     <label> Sibonga Multi-Purpose Cooperative</label><br/>
     <label> Poblacion, Sibonga, Cebu </label><br/>
     <label> (032) 486 - 1023</label>
     
  </div>
</center><br/> <br/>
<label style="font-size: 18px; font-family: calibri;">Product Inventory: <span> <?php echo $month1; echo " "; echo $year; ?> </span> </label><br/>
<label style="font-size: 18px; font-family: calibri;">Product Category: <?php echo $cname; ?> </label>
<br/> <br/> <hr/>
</div>
 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <!-- <th>Product Code</th> -->
                     <!-- <th>Date</th> -->
                     <th>Name</th>
                     <th> Beg. Bal. </th>
                     <th> Price </th>
                     <th> Total </th>
                     <th>In Stocks </th>
                     <th>Price</th>
                     <th>Total</th> 
                     <th>Sold</th>
                     <!-- <th>Price</th> -->
                     <th>Total <i> (Sold) </i> </th>
                     <th>Ending Stocks</th>
                     <th>Ending Bal.</th>
                     <th> Sales</th>
                     <th>Action</th>
                   </tr>
               </thead>
          <tbody>

<?php


    // echo "<input id='c_date' value='$dstock' >";

    $query = "SELECT * FROM product p  JOIN category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE p.CATEGORY_ID='$category' AND p.DATE_STOCK_IN_MONTH='$month' AND p.DATE_STOCK_IN_YEAR='$year' AND p.DATE_STOCK_IN_DAY='$day' GROUP BY PRODUCT_CODE";
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            if (mysqli_num_rows($result) > 0) {
                while ($row = mysqli_fetch_assoc($result)) {

                $beg = $row['BALANCE'];
                $old_price = $row['OLD_PRICE'];
                $old_total = $row['OLD_TOTAL'];
                $stock_date = $row['DATE_STOCK_IN'];
                $price = $row['PRICE'];
                $prr = number_format($price, 2);
                $r_price = $row['REGULAR_PRICE'];
                $r_price2 = number_format($r_price, 2);
                $price2 = number_format($price, 2);
                $sol = $row['SOLD'];
                $qty = $row['QTY_STOCK'];
                $pid = $row['PRODUCT_ID'];
                $ttl_in_stock1 = $qty - $beg;
                $ttl_in_stock = '';
                if ($ttl_in_stock1 <= 0) {
                    $ttl_in_stock = 0;
                }else{
                    $ttl_in_stock = $ttl_in_stock1;
                }
                $ttl_beg = $r_price * $beg;
                $ttl_beg1 = number_format($ttl_beg, 2);
                $ttl_stock_price = $qty * $price;
                $total01 = number_format($ttl_stock_price, 2);
                $ttl_amount_sold = $sol * $r_price;
                $total02 = number_format($ttl_amount_sold, 2);
                $cash = $row['CASH'];
                $credit = $row['CREDIT'];
                $ttl_on_hand = $qty - $sol;                
                $new_total = $ttl_on_hand * $r_price2;
                $total03 = number_format($new_total, 2);
                $variant = '';
                $ttl_income = 0;
                $TTLSTOCK = '';

                $sql9 = mysqli_query($db, "SELECT * FROM transaction_details WHERE PRODUCT_ID='$pid' ");
                $rows = mysqli_fetch_assoc($sql9);
                $price9 = $rows['PRICE'];
                $sql8 = mysqli_query($db, "SELECT SUM(QTY) AS ttl FROM transaction_details WHERE PRODUCT_ID='$pid' ");
                $rows8 = mysqli_fetch_assoc($sql8);
                $qty9 = $rows8['ttl'];

                $in_ttl = $r_price * $sol;
                $sol_ttl = $price * $sol;
                $total_over_sales = $sol_ttl - $in_ttl;
                $price8 = number_format($total_over_sales, 2);


                if ($sol == 0) {
                  $ttl_income = 0;
                }else{

                  $reg_price = $r_price * $sol;
                  $ttl_income = $new_total - $reg_price;
                  
                  if ($ttl_income > 0) {
                      
                
                  }else{
                    $ttl_income = 0;
                  }
                }

               

                $sql0 = mysqli_query($db, "SELECT SUM(QTY_STOCK) AS overall FROM product WHERE ENDED='YES' ");
                while ($row0 = mysqli_fetch_array($sql0)) {
                  $TTLSTOCK = $row0['overall'];
                  $TTLSTOCK = number_format($TTLSTOCK);
                }

                $sql = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='".$row['VARIANT_ID']."' ");

                while ($row1 = mysqli_fetch_assoc($sql)) {
                    $variant = $row1['variant'];
                }




                echo '<tr>';
                // echo '<td>'. $row['PRODUCT_CODE'].'</td>';
                // echo "<td> $stock_date </td>";
                echo '<td>'. $row['NAME'].' ';
                echo "(<i> $variant </i>)";
                echo "</td>";
                // echo '<td>'. $row['CNAME'].'</td>';
                // echo '<td>'. $row['QTY_STOCK'].'</td>';
                echo "<td>$beg</td>";
                echo "<td>$r_price2</td>";
                echo "<td>$ttl_beg1</td>";



                echo "<td>$ttl_in_stock</td>";
                echo "<td>$r_price2</td>";
                echo "<td>  $total01</td>";
                echo "<td> $sol ($cash)-cash ($credit)-credit </td>";
                // echo "<td> $prr </td>";
                echo "<td>  $total02</td>";
                echo "<td>$ttl_on_hand</td>";
                echo "<td>  $total03</td>";
                echo "<td>  $price8</td>";
                // echo "<td> $ttl_income </td>";
                // echo '<td>'. $row['DATE_STOCK_IN'].'</td>';
                      echo '<td align="right">
                              <a type="button" class="btn btn-primary bg-gradient-primary" href="inv_searchfrm.php?action=edit & id='.$row['PRODUCT_CODE'] . '"><i class="fas fa-fw fa-th-list"></i> View</a>
                          </div> </td>';
                echo '</tr> ';
                        }
            }else{

                 echo "<script>
               $('#dataTable').hide();
            </script>";
            echo " <b style='color:red;'> NO DATA AVAILABLE ! </b> ";

            }
?> 
                                    
                </tbody>
            </table>
<!--             <div style="float: right;" id="total_stocks"> <br/> <label> <b> TOTAL IN STOCKS: <?php if (empty($TTLSTOCK)) {
              # code...
            }else{
              echo $TTLSTOCK;
            } ?> </b> </label>  </div> -->

