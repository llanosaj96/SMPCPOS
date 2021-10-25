<?php
include'../includes/connection.php';
session_start();

              $date = $_POST['date'];
              $customer = $_POST['customer'];
              $subtotal = $_POST['subtotal'];
              $lessvat = $_POST['lessvat'];
              $netvat = $_POST['netvat'];
              $addvat = @$_POST['addvat'];
              $total = $_POST['total'];
              $cash = @$_POST['customer_cash'];
              $emp = $_POST['employee'];
              $rol = $_POST['role'];
              $v_id = $_POST['variant_id'];
              $mode = @$_POST['mode'];
              $or_no = @$_POST['or_number'];
              $sp_date = @$_POST['specific_date'];
              $po1 = $_POST['po_customer1'];
              $po2 = $_POST['po_customer2'];
              $totalpo = ((double)$po2 - (double)$po1) + 1;

              $dddate = '';
              if ($sp_date != '0000-00-00') {
                $dddate = $sp_date;
              }else{
                $dddate = $date;
              }
              $mode_amount = '';
              //imma make it trans uniq id
              date_default_timezone_set('Asia/Manila');
              $today = date("mdGis"); 
              
              $countID = count($_POST['name']);
              $id = $_POST['id'];

              // CHECKING THE CUSTOMER'S AMOUNT
              $grand_total = @$_POST['grand_total'];
              $grand_total1 = str_replace(',', '', $grand_total);
              $change = $cash - $grand_total1;
              $change1 = number_format($change, 2);



                if (empty($mode)) {

                  echo "<script> alert('Please select mode of payment!'); </script>";

                }else{

                  $SQLL =mysqli_query($db, "SELECT * FROM transaction WHERE OR_NUMBER='$or_no' AND DATE='$sp_date' ");
                  if (mysqli_num_rows($SQLL) >= 1) {
                    echo "<script> alert('OR No. and date already exist!') </script>";
                  }else{
                    if($grand_total > $cash || $change < 0){
                echo "<script> alert('Amount not enough. '); </script>";
              }else{

                echo "<script> alert('Recorded | Total Change:₱ $change1 '); </script>";


                echo "<table>";
                switch($_GET['action']){
                  case 'add':  
                  for($i=1; $i<=$countID; $i++)
                    {
                      // echo "'{$today}', '".$_POST['name'][$i-1]."', '".$_POST['quantity'][$i-1]."', '".$_POST['price'][$i-1]."', '{$emp}', '{$rol}' <br>";

                      $ids = $_POST['id'][$i-1];
                      $q = $_POST['quantity'][$i-1];
                      
                      if ($mode == 'cash') {


                        // if ($po1 != '' && $po2 !='') {
                        //   $sq = mysqli_query($db, " UPDATE customer SET PO_MEMBER='YES', PO_CARD_NO='$po1 - $po2', PO_DATE_ISSUED='$dddate' WHERE CUST_ID='$customer' ");
                        // }

                        $sql = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID='$ids' ");
                        while ($row = mysqli_fetch_assoc($sql)) {
                          $cash1 = $row['CASH'];
                          $P_CODE = $row['PRODUCT_CODE'];
                          $new_cash = $q + $cash1;

                          $sqll = mysqli_query($db, "UPDATE product SET CASH='$new_cash' WHERE PRODUCT_ID='$ids' ");


                        }

                        $query2 = "INSERT INTO `transaction_details`
                                 (`ID`, `PRODUCT_ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`, `CASH`)
                                 VALUES (Null, '".$_POST['id'][$i-1]."', '{$today}', '".$_POST['name'][$i-1]."', '".$_POST['quantity'][$i-1]."', '".$_POST['price'][$i-1]."', '{$emp}', '{$rol}', '".$_POST['quantity'][$i-1]."')";

                      mysqli_query($db,$query2)or die (mysqli_error($db));

                      $sqll11 = mysqli_query($db, "UPDATE delivery SET STATUS='COMPLETED' WHERE PRODUCT_CODE='$ids' ");

                        
                      }else if ($mode == 'credit'){

                        if ($po1 != '' && $po2 !='') {
                          $NEWTOTAL = '';
                          $sqq = mysqli_query($db, "SELECT * FROM customer WHERE CUST_ID='$customer' ");
                          while($rowqq = mysqli_fetch_assoc($sqq)){
                            $oldpototal = $rowqq['TOTAL'];
                            $NEWTOTAL = $oldpototal + $totalpo;

                            $sq = mysqli_query($db, " UPDATE customer SET PO_MEMBER='YES', PO_CARD_NO='$po1', PO_CARD_NO2='$po2', PO_DATE_ISSUED='$dddate', TOTAL='$NEWTOTAL' WHERE CUST_ID='$customer' ");
                          }

                          
                        }

                        $sql2 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID='$ids' ");
                        while ($row2 = mysqli_fetch_assoc($sql2)) {
                          $credits = $row2['CREDIT'];
                          $new_credit = $q + $credits;
                           $sqlll = mysqli_query($db, "UPDATE product SET CREDIT='$new_credit' WHERE PRODUCT_ID='$ids' ");

                        }                        


                        $query = "INSERT INTO `transaction_details`
                                 (`ID`, `PRODUCT_ID`, `TRANS_D_ID`, `PRODUCTS`, `QTY`, `PRICE`, `EMPLOYEE`, `ROLE`, `CREDIT`)
                                 VALUES (Null, '".$_POST['id'][$i-1]."', '{$today}', '".$_POST['name'][$i-1]."', '".$_POST['quantity'][$i-1]."', '".$_POST['price'][$i-1]."', '{$emp}', '{$rol}', '".$_POST['quantity'][$i-1]."')";

                      mysqli_query($db,$query)or die (mysqli_error($db));

                      $sqll22 = mysqli_query($db, "UPDATE delivery SET STATUS='COMPLETED' WHERE PRODUCT_CODE='$ids' ");


                      }else{
                        echo "<script> alert('Please select mode of payment!'); </script>";
                      }

                      


                      }
                      $query111 = "INSERT INTO `transaction`
                                 (`TRANS_ID`, `CUST_ID`, `NUMOFITEMS`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `C_CHANGE`, `DATE`, `TRANS_D_ID`, `OR_NUMBER`)
                                 VALUES (Null,'{$customer}','{$countID}','{$subtotal}','{$lessvat}','{$netvat}','{$addvat}','{$total}','{$cash}', '{$change}', '{$dddate}','{$today}','{$or_no}')";
                      mysqli_query($db,$query111)or die (mysqli_error($db));

                  break;
                }
                unset($_SESSION['pointofsale']);


              }
                  }

              
            }
                    
               ?>
            
          </div>


  <script type="text/javascript">
    window.location = "pos.php";
  </script>
























<?php
              // switch($_GET['action']){
              //   case 'add':     
              //       $query = "INSERT INTO transaction_details
              //                  (`ID`, `PRODUCTS`, `EMPLOYEE`, `ROLE`)
              //                  VALUES (Null, 'here', '{$emp}', '{$rol}')";
              //       mysqli_query($db,$query)or die ('Error in Database '.$query);
              //       $query2 = "INSERT INTO `transaction`
              //                  (`TRANS_ID`, `CUST_ID`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_D_ID`)
              //                  VALUES (Null,'{$customer}','{$subtotal}','{$lessvat}','{$netvat}','{$addvat}','{$total}','{$cash}','{$date}','{$today}'')";
              //       mysqli_query($db,$query2)or die ('Error in updating Database2 '.$query2);
              //   break;
              // }

              // mysqli_query($db,"INSERT INTO transaction_details
              //                 (`ID`, `PRODUCTS`, `EMPLOYEE`, `ROLE`)
              //                 VALUES (Null, 'a', '{$emp}', '{$rol}')");

              // mysqli_query($db,"INSERT INTO `transaction`
              //                 (`TRANS_ID`, `CUST_ID`, `SUBTOTAL`, `LESSVAT`, `NETVAT`, `ADDVAT`, `GRANDTOTAL`, `CASH`, `DATE`, `TRANS_DETAIL_ID`)
              //                 VALUES (Null,'{$customer}',{$subtotal},{$lessvat},{$netvat},{$addvat},{$total},{$cash},'{$date}',(SELECT MAX(ID) FROM transaction_details))");

              // header('location:posdetails.php');

            ?>
<!--  <script type="text/javascript">
      alert("Transaction successfully added.");
      window.location = "pos.php";
      </script> -->