

<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
  $query = 'SELECT ID, t.TYPE
            FROM users u
            JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
  $result = mysqli_query($db, $query) or die (mysqli_error($db));
  
  while ($row = mysqli_fetch_assoc($result)) {
            $Aa = $row['TYPE'];
                   
  if ($Aa=='User'){
?>
  <script type="text/javascript">
    //then it will be redirected
    alert("Restricted Page! You will be redirected to POS");
    window.location = "pos.php";
  </script>
<?php
  }           
}
 $query = 'SELECT * FROM transaction T
              JOIN customer C ON T.`CUST_ID`=C.`CUST_ID`
              JOIN transaction_details tt ON tt.`TRANS_D_ID`=T.`TRANS_D_ID`
              WHERE TRANS_ID ='.$_GET['id'];
        $cashh = '';
        $ress = mysqli_query($db, "SELECT CASH FROM transaction WHERE TRANS_ID='".$_GET['id']."' ");
        while ($roww = mysqli_Fetch_assoc($ress)) {
          $cashh = $roww['CASH'];
          
        }

        $result = mysqli_query($db, $query) or die (mysqli_error($db));
        while ($row = mysqli_fetch_assoc($result)) {

          
          

          $fname = $row['FIRST_NAME'];
          $lname = $row['LAST_NAME'];
          $pn = $row['PHONE_NUMBER'];
          $date = $row['DATE'];
          $tid = $row['TRANS_D_ID'];
          $cash = $row['CASH'];
          $sub = $row['SUBTOTAL'];
          $less = $row['LESSVAT'];
          $net = $row['NETVAT'];
          $add = $row['ADDVAT'];
          $grand = $row['GRANDTOTAL'];
          $role = $row['EMPLOYEE'];
          $roles = $row['ROLE'];
          $ORN = $row['OR_NUMBER'];
          $change = $row['C_CHANGE'];
          $MODE = "";
          $num = "";
          if ($cash == 0) {
            $MODE = 'Credit';
            $num = 'SI No.';
          }else{
            $MODE = 'Cash';
            $num = 'OR No.';
          }
          $change1 = number_format($change, 2);
        }
?>
            
          <div class="card shadow mb-4">
            <div class="card-body">
              <div class="form-group row text-left mb-0">
                <div class="col-sm-9">
                  <h5 class="font-weight-bold">
                    Sales and Inventory
                  </h5>
                </div>
                <div class="col-sm-3 py-1">
                  <h6>
                    Date: <?php echo $date; ?>
                  </h6>
                </div>
              </div>
<hr>
              <div class="form-group row text-left mb-0 py-2">
                <div class="col-sm-4 py-1">
                  <?php echo $num; echo" "; echo $ORN; echo "<br/>"; ?>
                  <h6 class="font-weight-bold">

                    <?php echo $fname; ?> <?php echo $lname; ?>
                  </h6>
                  <h6>
                    Phone: <?php echo $pn; ?>
                  </h6>
                </div>
                <div class="col-sm-4 py-1"></div>
                <div class="col-sm-4 py-1">
                  <h6>
                    Transaction #<?php echo $tid; ?>
                  </h6>
                  <h6 class="font-weight-bold">
                    Encoder: <?php echo $role; ?>
                  </h6>
                  <h6>
                    <?php echo $roles; ?>
                  </h6>
                </div>
              </div>
              <button id="sudo" onclick="myApp.printTable()" class="btn btn-primary bg-gradient-primary" style="float: right; background: green; border: green;" /> Print </button> <br/><br/>


              <div id="header_trans" style="display: none;">
                  <br/> <br/>
                <center>
                  <div class="card-body">
                     <img src="../img/smpcemoji.png" style="margin-bottom: -37px; margin-left: -40px;">
                     <label> Sibonga Multi-Purpose Cooperative</label><br/>
                     <label> Poblacion, Sibonga, Cebu </label><br/>
                     <label> (032) 486 - 1023</label>
                     
                  </div>
                </center>
                <br/>
              </div>


          <table class="table table-bordered" width="100%" cellspacing="0" id="print_table">
            <thead>
              <tr>
                <th>Products</th>
                <th width="8%">Qty</th>
                <th width="20%">Price</th>
                <th width="20%">Subtotal</th>
              </tr>
            </thead>
            <tbody>
<?php  
           $query = 'SELECT *
                     FROM transaction_details
                     WHERE TRANS_D_ID ='.$tid;
            $result = mysqli_query($db, $query) or die (mysqli_error($db));
            while ($row = mysqli_fetch_assoc($result)) {




              $Sub =  $row['QTY'] * $row['PRICE'];
              $sub = number_format($Sub, 2);
                echo '<tr>';
                echo '<td>'. $row['PRODUCTS'].'</td>';
                echo '<td>'. $row['QTY'].'</td>';
                echo '<td>'. $row['PRICE'].'</td>';
                echo "<td> ₱ $sub </td>";
                echo '</tr> ';
                        }
?>
            </tbody>
          </table>

          <div id="show_lower" style="display: none;">
            <hr/>
            <table style=" width: 100%;">
              <tr>
                <td> Subtotal </td>
                <td>  ₱ <?php echo $sub; ?> </td>
              </tr>
              <tr>
                <td> Amount </td>
                <td> ₱ <?php echo number_format($cash, 2); ?> </td>
              </tr>
              <tr>
                <td> Change </td>
                <td> ₱ <?php echo $change1; ?> </td>
              </tr>
            </table>


          </div>



            <div class="form-group row text-left mb-0 py-2" id="total_details">
                <div class="col-sm-4 py-1"></div>
                <div class="col-sm-3 py-1"></div>
                <div class="col-sm-4 py-1">
                  <h4>
                    <?php echo $MODE; ?> Amount: ₱ <?php echo number_format($cashh, 2); ?>
                  </h4>
                  <table width="100%" id="side_bar">
                    <tr>
                      <td class="font-weight-bold">Subtotal</td>
                      <td class="text-right">₱ <?php echo $sub; ?></td>
                    </tr>
                    <tr>
                      <td class="font-weight-bold">Less VAT</td>
                      <td class="text-right">₱ <?php echo $less; ?></td>
                    </tr>
                    <tr>
                      <td class="font-weight-bold">Net of VAT</td>
                      <td class="text-right">₱ <?php echo $net; ?></td>
                    </tr>
                    <tr>
                      <td class="font-weight-bold">Add VAT</td>
                      <td class="text-right">₱ <?php echo $add; ?></td>
                    </tr>
                    <tr>
                      <td class="font-weight-bold">Total <hr/></td>
                      <td class="font-weight-bold text-right text-primary">₱ <?php echo $grand; ?> <hr/></td>
                    </tr>
                    <tr>
                      <td class="font-weight-bold">Change</td>
                      <td class="text-right">₱ <?php echo $change1; ?></td>
                    </tr>
                  </table>
                </div>
                <div class="col-sm-1 py-1"></div>
              </div>
            </div>
          </div>


<?php
include'../includes/footer.php';
?>

<script type="text/javascript" src="jquery-3.3.1.js"></script>

<!-- <script type="text/javascript">
  $('#sudo').click(function(){
    window.print();
    return false;
});
</script> -->
<!-- <script>
function printData()
{
   var divToPrint=document.getElementById("print_table");
   newWin= window.open("");
   newWin.document.write(divToPrint.outerHTML);
   newWin.print();
   newWin.close();
}

$('#sudo').on('click',function(){
printData();
})
</script> -->
<script type="text/javascript">
      var myApp = new function () {
        this.printTable = function () {
            var tab = document.getElementById('print_table');
            var side = document.getElementById('show_lower');
            var trans = document.getElementById('header_trans');
            // $('#side_bar th:nth-child(1),#side_bar td:nth-child(1)').remove();


            var style = "<style>";
                style = style + "h4 {margin-left: 20px; font: 10px Calibri;}";
                style = style + "table {width: 100%;font: 14px Calibri;}";
                style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
                style = style + "padding: 2px 3px;text-align: center;}";
                style = style + "</style>";

            var win = window.open('', '', 'height=400,width=400');
            win.document.write(style);          //  add the style.
            win.document.write(trans.innerHTML); 
            win.document.write(tab.outerHTML);
            win.document.write(side.innerHTML);
            win.document.close();
            win.print();
        }
    }
</script>