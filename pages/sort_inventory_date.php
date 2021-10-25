<!-- <div class="form-group">
    As of: <span id="current_date" class="current_date">   </span>
</div> -->

<?php
        include'../includes/connection.php';


    $dstock = @$_POST['date_stock_in'];
    $dstock1 = date("F d, Y", strtotime($dstock));
    $cname = '';

    $query11 = mysqli_query($db, "SELECT * FROM product p  JOIN category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE p.DATE_STOCK_IN='$dstock' GROUP BY PRODUCT_CODE");
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
<label style="font-size: 18px; font-family: calibri;">Product Inventory: <span> <?php echo $dstock1; ?> </span> </label><br/>
<label style="font-size: 18px; font-family: calibri;">Product Category: <?php echo $cname; ?> </label>
<br/> <br/> <hr/>
</div>
 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <!-- <th>Product Code</th> -->
                     <th>Name</th>
                     <th>In Stocks </th>
                     <th>Price</th>
                     <th>Total</th> 
                     <th>Sold</th>
                     <th>Total Amount <i> (Sold) </i> </th>
                     <th>Ending Stocks</th>
                     <th>Total</th> 
                     <th>Sales</th>
                     <!-- <th>Date Stock In</th> -->
                     <th>Action</th>
                   </tr>
               </thead>
          <tbody>

<?php


    // echo "<input id='c_date' value='$dstock' >";

    $query = "SELECT * FROM product p  JOIN category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE p.DATE_STOCK_IN='$dstock' GROUP BY PRODUCT_CODE";
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {
                $price = $row['PRICE'];
                $price2 = number_format($price, 2);
                $sol = $row['SOLD'];
                $qty = $row['QTY_STOCK'];
                $ttl_stock_price = $qty * $price;
                $total01 = number_format($ttl_stock_price, 2);
                $ttl_amount_sold = $sol * $price;
                $total02 = number_format($ttl_amount_sold, 2);
                $ttl_on_hand = $qty - $sol;                
                $new_total = $ttl_stock_price - $ttl_amount_sold;
                $total03 = number_format($new_total, 2);
                $variant = '';
                $pid = $row['PRODUCT_ID'];
                $sql9 = mysqli_query($db, "SELECT * FROM transaction_details WHERE PRODUCT_ID='$pid' ");
                $rows = mysqli_fetch_assoc($sql9);
                $qty9 = $rows['QTY'];
                $price9 = $rows['PRICE'];
                $total_sales = $price9 * $qty9;

                $sql = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='".$row['VARIANT_ID']."' ");

                while ($row1 = mysqli_fetch_assoc($sql)) {
                    $variant = $row1['variant'];
                }     
                echo '<tr>';
                // echo '<td>'. $row['PRODUCT_CODE'].'</td>';
                echo '<td>'. $row['NAME'].' ';
                echo "(<i> $variant </i>)";
                echo "</td>";
                // echo '<td>'. $row['CNAME'].'</td>';
                // echo '<td>'. $row['QTY_STOCK'].'</td>';
                echo '<td>'. $row['QTY_STOCK'].'</td>';
                echo "<td>$price2</td>";
                echo "<td>  ₱$total01</td>";
                echo '<td>'. $row['SOLD'].'</td>';
                echo "<td>  ₱$total02</td>";
                echo "<td>$ttl_on_hand</td>";
                echo "<td>  ₱$total03</td>";
                echo "<td>  ₱$total_sales</td>";
                // echo '<td>'. $row['DATE_STOCK_IN'].'</td>';
                      echo '<td align="right">
                              <a type="button" class="btn btn-primary bg-gradient-primary" href="inv_searchfrm.php?action=edit & id='.$row['PRODUCT_CODE'] . '"><i class="fas fa-fw fa-th-list"></i> View</a>
                          </div> </td>';
                echo '</tr> ';
                        }
?> 
                                    
                                </tbody>
                            </table>

<script type="text/javascript">
    // $('#dataTable th:nth-child(9),#dataTable td:nth-child(9)').remove();
</script>