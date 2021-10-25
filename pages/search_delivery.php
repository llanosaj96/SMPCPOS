<table class="table table-bordered" id="deliveryTable" width="100%" cellspacing="0"> 
     
     <thead>
         <tr>
           <!-- <th>Product Code</th> -->
           <th width="15%;">Date</th>
           <th width="15%;">Product Code</th>
           <th>Name</th>
           <th width="10%;">Quantity</th>
           <th width="10%;">Returned</th>
           <th width="10%;"> Sold </th>
           <th width="10%"> Diff </th>
           <th width="10%;"> Returned Cases </th>
           <!-- <th>Status</th> -->
         </tr>

         <?php

          include'../includes/connection.php';

          $dts = @$_POST['date_get'];
          $new_d = date("Y-m-d", strtotime($dts));

          $query = "SELECT * FROM delivery WHERE STAT =1 AND DELIVERY_DATE='$dts' ";
          $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
        while ($row = mysqli_fetch_assoc($result)) {


            $returned_cases = $row['RETURNED_CASES'];
            $dDate = $row['DELIVERY_DATE'];
            $dCode = $row['PRODUCT_CODE'];
            $dName = $row['NAME'];
            $dQty = $row['QTY'];
            $dStat = $row['STATUS'];
            $ret = $row['RETURNED'];
            $sales = $row['SALES'];
            $def_total = $ret + $sales;
            $def = $dQty - $def_total;
            $difstat = '';
            if ($def == '0') {
              $difstat = "<label style='color: green;'> $def </label>";
            }else{
              $difstat = "<label style='color: red;'> $def </label>";
            }
            $color = '';
            if ($dStat == 'TO DELIVER') {
              $color = "<label style='color: red;'> $dStat </label>";
            }else{
               $color = "<label style='color: green;'> $dStat </label>";
            }

            echo '<tr>';
            echo "<td> $dDate </td>";
            echo "<td> $dCode </td>";
            echo "<td> $dName </td>";
            echo "<td> $dQty </td>";
            echo "<td> $ret </td>";
            echo "<td> $sales </td>";
            echo "<td> $difstat </td>";
            echo "<td> $returned_cases </td>";
            // echo "<td> $color </td>";
            echo '</tr> ';
                  }
?> 

     </thead>
     <tbody>
       
     </tbody>
  </table>