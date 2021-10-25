<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
?>

<?php 

                $query = 'SELECT ID, t.TYPE
                          FROM users u
                          JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].'';
                $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
                while ($row = mysqli_fetch_assoc($result)) {
                          $Aa = $row['TYPE'];
                   
if ($Aa=='User'){
           
             ?>    <script type="text/javascript">
                      //then it will be redirected
                      alert("Restricted Page! You will be redirected to POS");
                      window.location = "pos.php";
                  </script>
             <?php   }
                         
           
}   
?>


<div class="card shadow mb-4">
  <div class="card-header py-2">
    <label style="color: green;"> <h3> Delivery </h3> </label>
    <div>
      <button class="btn btn-primary bg-gradient-primary" data-toggle="modal" data-target="#deliveryModal" style=" background: green; border: green;" > Out for delivery </button>
      <button class="btn btn-primary bg-gradient-primary" style=" background: green; border: green;" data-toggle="modal" data-target="#returnDeliveryModal" > Return </button>
       <button class="btn btn-primary bg-gradient-primary" style=" background: green; border: green;" onclick="fnExcelReportDelivery()"> Download </button>



      <div style="float: right; display: flex; flex-direction: row;">
        <label> Search: </label> &nbsp;&nbsp;
        <input type="date" name="del_search" id="date_search" onchange="search_now_date()" class="form-control" placeholder="search">
      </div>

      <br/><br/>
      <span class="show_result_table"> 
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
           <th width="10%"> Cases Returned </th>
           <!-- <th>Status</th> -->
         </tr>

       <!--   <?php                  
    $query = "SELECT * FROM delivery WHERE STAT !=0 ";
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
        while ($row = mysqli_fetch_assoc($result)) {

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
            // echo "<td> $color </td>";
            echo '</tr> ';
                  }
?>  -->

     </thead>
     <tbody>
       
     </tbody>
  </table>
</span>




    </div>
  </div>

      
</div>



  <!-- Add Delivery Modal-->
  <div class="modal fade" id="deliveryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Out delivery</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          

            <div class="form-group">
             <?php
               // echo $aaa;
                  $cat = '';

                  $sql = "SELECT DISTINCT DELIVERY_DATE FROM delivery WHERE STAT=0 order by DELIVERY_DATE ";
                  $result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");
                    while ($row = mysqli_fetch_assoc($result)) {
                      $D = $row['DELIVERY_DATE'];
                      $dd = date('F j, Y', strtotime($D));
                      $cat .= "<option class='form-control' value='".$row['DELIVERY_DATE']."'> $dd </option>";
                    }

             ?>
             <select id="delivery_date" class='form-control' name='delivery_date' required onclick="get_delivery()">
              <option disabled selected hidden>Select Date</option>
              <?php echo $cat; ?>
             </select>

           </div>
           <div class="form-group">
             <label style="color: red;"> <strong>NOTE:</strong> Please check box/es to remove item/s ONLY. </label>
           </div>
           <div class="form-group" id="delivery_info">
             
           </div>
           <div style="display:flex; flex-direction:row; float:right; padding:10px;">
            <div class='total_qty_display'> </div>
           </div> <br/> <br/>         
            <hr>
            <button type="submit" onclick="savedd()" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button type="submit" class="btn btn-danger" onclick="delete_delivery()"><i class="fa fa-times fa-fw"></i>Remove</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
        
        </div>
      </div>
    </div>
  </div>


  <!-- Return Delivery Modal-->
  <div class="modal fade" id="returnDeliveryModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Return Item/s</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <label> Select date </label>
            <input class="form-control" type="date" name="return_now" id="return_now" onchange="returnNow()"> 
              <label style="color: red; margin-bottom: 10px; margin-top: 10px;"> <strong>NOTE:</strong> Please be mindful that you can only return ONCE! </label>

            <div id="show_data">
              
            </div>
        </div>
      </div>
    </div>
  </div>


<?php
include'../includes/footer.php';
?>
<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript" src="deliveryy.js"></script>
<script type="text/javascript">
  function search_now_date(){
    var dd = $('#date_search').val();
    var dats = {
      "date_get": dd
    };

    $.ajax({
      url: "search_delivery.php",
      type: "POST",
      data: dats,
      success: function(response){
        $('.show_result_table').html(response);
      }
    })

  }

  function returnNow() {
    var ret_data = $('#return_now').val();
    var dataaa = {
      "return_date": ret_data
    };
    $.ajax({
      url: "return_items.php",
      type: "POST",
      data: dataaa,
      success: function(ress){
         $('#show_data').html(ress);
         $('#show_data').fadeIn();
      }
    })
  }


  function fnExcelReportDelivery(){
    
    var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
    var textRange; var j=0;
    tab = document.getElementById('deliveryTable'); // id of table
    // $('#dataTable th:nth-child(14),#dataTable td:nth-child(14)').remove();
    $d = new Date();
    

    for(j = 0 ; j < tab.rows.length ; j++) 
    {     
        tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
        //tab_text=tab_text+"</tr>";
    }

    tab_text=tab_text+"</table>";
    tab_text= tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
    tab_text= tab_text.replace(/<img[^>]*>/gi,""); // remove if u want images in your table
    tab_text= tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

    var ua = window.navigator.userAgent;
    var msie = ua.indexOf("MSIE "); 

    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
    {
        txtArea1.document.open("txt/html","replace");
        txtArea1.document.write(tab_text);
        txtArea1.document.close();
        txtArea1.focus(); 
        sa=txtArea1.document.execCommand("SaveAs",true,"$d.xls");
    }  
    else                 //other browser not tested on IE 11
        sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  

    return (sa);

}


</script>