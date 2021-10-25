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
    
$query2 = 'SELECT NAME FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID where PRODUCT_CODE ='.$_GET['id'].' limit 1';
        $result2 = mysqli_query($db, $query2) or die (mysqli_error($db));
        while ($row = mysqli_fetch_assoc($result2)) {
          $n = $row['NAME'];
        }
?>
            
            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 style="color: green;">Inventory for : <?php echo $n; ?></h4>
              <button  id="sudo1" onclick="myApp1.printTable()" class="btn btn-primary bg-gradient-primary" style=" margin-top: -40px; background: green; border: green; float: right;" /> Print </button>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <div id="header" style="display: none;">
    <br/> <br/>
<center>
  <div class="card-body">
     <img src="../img/smpcemoji.png" style="margin-bottom: -37px; margin-left: -40px;">
     <label> Sibonga Multi-Purpose Cooperative</label><br/>
     <label> Poblacion, Sibonga, Cebu </label><br/>
     <label> (032) 486 - 1023</label>
     
  </div>
</center>
<h4 style="font-size: 18px; font-family: calibri;">Inventory for : <?php echo $n; ?> </h4>
 <hr/>
</div>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <th>Product Code</th>
                     <th>Name</th>
                     <th>Quantity</th>
                     <th>On Hand</th>
                     <th>Sold</th>
                     <th>Category</th>
                     <th>Supplier</th>
                     <th>Date Stock In</th>
                     <!-- <th>Action</th> -->
                   </tr>
               </thead>
          <tbody>

<?php   
$query = 'SELECT PRODUCT_ID, PRODUCT_CODE, SOLD, NAME, QTY_STOCK, ON_HAND, CNAME, COMPANY_NAME, DATE_STOCK_IN FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID JOIN supplier s ON p.SUPPLIER_ID=s.SUPPLIER_ID where PRODUCT_CODE ='.$_GET['id'];
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
            while ($row = mysqli_fetch_assoc($result)) {
                $dstock = '';
                $sql = mysqli_query($db, "SELECT * FROM inventory_update WHERE PRODUCT_CODE='".$row['PRODUCT_CODE']."' ");
                while ($row1 = mysqli_fetch_assoc($sql)) {
                  $udate = $row1['UPDATED_DATE'];
                  $beg = $row1['IN_STOCK'];
                  $dstock .= " *$udate <br/> (stock in: $beg ) <br/>";
                }
                echo '<tr>';
                echo '<td>'. $row['PRODUCT_CODE'].'</td>';
                echo '<td>'. $row['NAME'].'</td>';
                echo '<td>'. $row['QTY_STOCK'].'</td>';
                echo '<td>'. $row['ON_HAND'].'</td>';
                echo '<td>'. $row['SOLD'].'</td>';
                echo '<td>'. $row['CNAME'].'</td>';
                echo '<td>'. $row['COMPANY_NAME'].'</td>';
                echo "<td> $dstock </td>";

                // echo '<td align="right">
                //       <a type="button" class="btn btn-warning bg-gradient-warning" href="inv_edit.php?action=edit & id='.$row['PRODUCT_ID']. '"><i class="fas fa-fw fa-edit"></i> Edit</a>
                //           </div></td>';
                echo '</tr> ';
                        }
?> 
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>

<?php
include'../includes/footer.php';
?>

<script type="text/javascript">
  var myApp1 = new function () {
        this.printTable = function () {

            var tab = document.getElementById('dataTable');
            var header = document.getElementById('header');
            $('#dataTable th:nth-child(12),#dataTable td:nth-child(12)').remove();


            var style = "<style>";
                style = style + "label {width: 100%;font: 17px Calibri;}";
                style = style + "table {width: 100%;font: 17px Calibri;}";
                style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
                style = style + "padding: 2px 3px;text-align: center;}";
                style = style + "</style>";

            var win = window.open('', '', 'height=700,width=700');
            win.document.write(style);
            win.document.write(header.innerHTML);          //  add the style.
            win.document.write(tab.outerHTML);
            win.document.close();
            win.print();
        }
    }
</script>