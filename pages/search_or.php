
<?php
  include'../includes/connection.php';

  $or_no = @$_POST['search_or'];


?>

<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
 <thead>
     <tr>
       <!-- <th>Product Code</th> -->
       <th width="10%"> Date </th>
       <th width="10%;">SI/OR No</th>
       <th width="30%;"> Name</th>
       <th width="5%;"> Quantity </th>
       <th width="20%;"> Item </th>
       <th>Unit Price </th>
       <th>Total</th>
       <th width="10%"> Mode </th>
       <th> Action</th> 
     </tr>
  </thead>
  <tbody>
    <?php

      $sqlA = mysqli_query($db, "SELECT * FROM transaction T JOIN customer C ON T.`CUST_ID`=C.`CUST_ID` JOIN transaction_details TD ON T.`TRANS_D_ID`=TD.`TRANS_D_ID` WHERE OR_NUMBER LIKE '$or_no' ORDER BY OR_NUMBER asc ");
      while ($rows = mysqli_fetch_assoc($sqlA)) {
        $tbl = '';
        $cust_id = $rows['CUST_ID'];
        $trans_id = $rows['TRANS_D_ID'];
        $date_sales = $rows['DATE'];
        $orn = $rows['OR_NUMBER'];
          $prod = $rows['PRODUCTS'];
          $qtyy = $rows['QTY'];
          $prrr = $rows['PRICE'];
          $prce = number_format((float)$prrr, 2);
          $ttl = number_format((float)$qtyy * (float)$prce, 2);
          $fn = $rows['FIRST_NAME'];
          $ln = $rows['LAST_NAME'];
          $csh = $rows['CASH'];
          $crdt = $rows['CREDIT'];

          $sqlB = mysqli_query($db, "SELECT SUM(QTY*PRICE) as TTL FROM transaction_details TD JOIN transaction TL ON TD.`TRANS_D_ID`=TL.`TRANS_D_ID` ");
          if ($rowB = mysqli_fetch_assoc($sqlB)) {
            $totl = $rowB['TTL'];

          }

          $tbl = "<tr>
          <td> $date_sales </td>
          <td> $orn </td>
          <td> $fn $ln </td>
          <td> $qtyy </td>
          <td> $prod </td>
          <td> $prce </td>
          <td> $ttl </td>
          <td> ($csh)cash - ($crdt)credit </td>
          <td align='right'>
                              <a type='button' class='btn btn-primary bg-gradient-primary' href='trans_view.php?action=edit & id=".$rows['TRANS_ID']." '><i class='fas fa-fw fa-th-list'></i> View</a>
          </td>
          </tr>";
          echo $tbl;

      }


    ?>
        
  </tbody>
</table>