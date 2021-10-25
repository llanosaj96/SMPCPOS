

<style type="text/css" media="print">
@media print
      {
         @page {
           margin-top: 0;
           margin-bottom: 0;
         }
         body  {
           padding-top: 72px;
           padding-bottom: 72px ;
         }
      } 


      
</style>


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
            ?>

<?php

$sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category order by CNAME asc";
$result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");


$aaa = "<select class='form-control' name='category' required>
        <option disabled selected hidden>Select Category</option>";
  while ($row = mysqli_fetch_assoc($result)) {
    $aaa .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
  }

$aaa .= "</select>";

$sql2 = "SELECT DISTINCT SUPPLIER_ID, COMPANY_NAME FROM supplier order by COMPANY_NAME asc";
$result2 = mysqli_query($db, $sql2) or die ("Bad SQL: $sql2");

$sup = "<select class='form-control' name='supplier' required>
        <option disabled selected hidden>Select Supplier</option>";
  while ($row = mysqli_fetch_assoc($result2)) {
    $sup .= "<option value='".$row['SUPPLIER_ID']."'>".$row['COMPANY_NAME']."</option>";
  }

$sup .= "</select>";

?>










  <!-- Product Modal-->
  <div class="modal fade" id="aModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Inventory</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="inventory_add.php?action=add">
           <div class="form-group">
            <?php
              date_default_timezone_set('Asia/Manila');
              $vDate22 = '';
              $vDate22 = date('Hisd', time());

            ?>
             <input class="form-control" placeholder="Product Code" autocomplete="off" name="prodcode" readonly value="<?php echo $vDate22; ?>">
           </div>
           <div class="form-group">
             <?php
               // echo $aaa;
                  $cat = '';
                  $sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category order by CNAME asc";
                  $result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");
                    while ($row = mysqli_fetch_assoc($result)) {
                      $cat .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
                    }

             ?>
             <select id="category" class='form-control' name='category' required onclick="sel_category()">
              <option disabled selected hidden>Select Category</option>
              <?php echo $cat; ?>
             </select>

           </div>
           <div class="form-group" id="variation" style="display: none;">
             <select id='variant' class='form-control' name='variant'>
              <option value="none">none</option>
             </select>
           </div>



           <div class="form-group">
             <input class="form-control" id="prod_name" placeholder="Product name" name="name" required>
           </div>
           <div class="form-group">
             <textarea rows="5" cols="50" class="form-control" placeholder="Description" name="description" required></textarea>
           </div>
           <div class="form-group">
             <input type="number" max="999999999" class="form-control" placeholder="Beginning balance" name="onhand">
           </div>
           <div class="form-group">
              <select id="opt" class='form-control' name='opt' required onclick="sel_option()" required>
              <option disabled selected hidden>Select...</option>
              <option value="0"> per item </option>
              <option value="1"> Per case </option>
              <option value="2">Per bottle </option>
              <option value="3">Per box </option>
              <option value="4">Per sack </option>
             </select>         
           </div>
           <div class="form-group">
             <input style="display: none;" type="number" max="999999999" class="form-control" autocomplete="off" id="quantity" name="quantity">
           </div>
           
           <div class="form-group">
             <input type="number" max="999999999" class="form-control" id="p_price" placeholder="Regular Price" name="regular_price" required>
           </div>
           <div class="form-group">
             <input type="number" max="999999999" class="form-control" id="s_price" placeholder="Selling Price" name="price" required>
           </div>
           <div class="form-group">
             <?php
               echo $sup;
             ?>
           </div>
           <div class="form-group">
             <input type="text" onfocus="(this.type='date')" onblur="(this.type='text')" class="form-control" placeholder="Date Stock In" name="datestock" required>
           </div>
           <div class="form-group" class="showSold">
            <label> Cash:</label>
             <input type="text" class="form-control" id="total_sold_item_cash" placeholder="Total stock out" name="total_sold_item_cash" autocomplete="off">
           </div>
            <div class="form-group" class="showSold">
            <label> Credit:</label>
             <input type="text" class="form-control" id="total_sold_item_credit" placeholder="Total stock out" name="total_sold_item_credit" autocomplete="off">
           </div>
            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button type="reset" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Reset</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>

            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 style="color: green;">Inventory &nbsp;<a  href="#" data-toggle="modal" data-target="#aModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 7px; background: green; border-color: green; color: white;"><i class="fas fa-fw fa-plus"></i></a> &nbsp;</h4> 
              <div style="float: right;">
                
                <button  id="sudo" onclick="myApp.printTable()" class="btn btn-primary bg-gradient-primary" style=" margin-top: -40px; background: green; border: green;" /> Print </button>
                <button id="btnExport" onclick="fnExcelReport();" class="btn btn-primary bg-gradient-primary" style=" margin-top: -40px; background: green; border: green;" /> Download </button>
                <iframe id="txtArea1" style="display:none"></iframe>
              </div>
            </div>
            <div class="card-body">
              <label>Search by: </label>
              <div class="form-group" style="display: flex; flex-direction: row;" id="ress">
                  <!-- <div class="form-group" style="margin-right: 10px;">
                    <select id="sort_by" class='form-control' name='sort_by' onclick="sort_search();" >
                          <option disabled selected hidden>Select</option>
                          <option value="day"> by day </option>
                          <option value="month"> by month </option>
                        </select>
                  </div> -->
                  <!-- <div class="form-group" style="display: none; margin-right: 10px; width: 15%;" id="by_day">
                    <input type="number" class='form-control' name="by_day" id="txt_day" placeholder="Enter day...">
                  </div> -->
                  <div class="form-group" style=" margin-right: 10px;" id="by_month">
                        <select id="month" class='form-control' name='month'>
                          <option disabled selected hidden>Month</option>
                          <option value="01"> January </option>
                          <option value="02"> February </option>
                          <option value="03"> March </option>
                          <option value="04"> April </option>
                          <option value="05"> May </option>
                          <option value="06"> June </option>
                          <option value="07"> July </option>
                          <option value="08"> August </option>
                          <option value="09"> September </option>
                          <option value="10"> October </option>
                          <option value="11"> November </option>
                          <option value="12"> December </option>
                        </select>
                      </div>
                      <div class="form-group" style="margin-right: 10px;">
                        <select id="year" class='form-control' name='year' >
                          <option disabled selected hidden>Year</option>
                          <option value="2020"> 2020 </option>
                          <option value="2021"> 2021 </option>
                          <option value="2022"> 2022 </option>
                          <option value="2023"> 2023 </option>
                        </select>
                      </div>

                   
                    <div class="form-group" style="margin-left: 10px;">
                   <?php
                     // echo $aaa;
                        $cat = '';
                        $sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category WHERE CATEGORY_ID!='1' order by CNAME asc";
                        $result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");
                          while ($row = mysqli_fetch_assoc($result)) {
                            $cat .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
                          }

                   ?>
                   <select id="category1" class='form-control' name='category1' style="width: 80%;">
                    <option disabled selected hidden>Select Category</option>
                    <option value="all_category">All Category</option>
                    <?php echo $cat; ?>
                   </select>

                 </div>
                 <div class="form-group" style="margin-left: -40px;"> 
                   <button id="search_inventory" class="btn btn-primary bg-gradient-primary" style=" width: 130%; background: green; border: green;" /> Search </button> 
                 </div>
           </div>
                             
             
             <div class="form-group" id="variation" style="display: none;">
               <select id='variant' class='form-control' name='variant'>
                
               </select>
             </div>



              <div class="table-responsive" id="show_sort_results">
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
                <br/> <br/>
                <label style="font-size: 18px; font-family: calibri;">Product Inventory </label>
                <br/> <br/> <hr/>
              </div>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <!-- <th>Product Code</th> -->
                     <th>Name</th>
                     <th> Beg. Bal </th>
                     <th> Price </th>
                     <th> Total </th>
                     <th>In Stocks </th>
                     <th>Price</th>
                     <th>Total</th> 
                     <th>Sold</th>
                     <th>Total<i> (Sold) </i> </th>
                     <th>Ending Stocks</th>
                     <th> Returned Cases </th>
                     <th>Total</th> 
                     <th> Sales </th>

                     <!-- <th> Income</th> -->
                     <!-- <th>Date Stock In</th> -->
                     <th>Action</th>
                   </tr>
                            </thead>
                                <tbody>

<!--                                   <?php

                $query = "SELECT * FROM product p  JOIN category c GROUP BY PRODUCT_CODE";
                $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {

                $ret_cases = $row['RETURNED_CASES_TOTAL'];
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
                echo "<td>  ₱$total03</td>";
                // echo '<td>'. $row['DATE_STOCK_IN'].'</td>';
                      echo '<td align="right">
                              <a type="button" class="btn btn-primary bg-gradient-primary" href="inv_searchfrm.php?action=edit & id='.$row['PRODUCT_CODE'] . '"><i class="fas fa-fw fa-th-list"></i> View</a>
                          </div> </td>';
                echo '</tr> ';
                        }


                                  ?>
 -->
                                    
                                </tbody>
                            </table>
                        </div>
                    </div>
                  </div>

<?php
include'../includes/footer.php';
?>
<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">





      var myApp = new function () {
        this.printTable = function () {

            var tab = document.getElementById('dataTable');
            var header = document.getElementById('header');
            var ttl_stock = document.getElementById('total_stocks');
            $('#dataTable th:nth-child(14),#dataTable td:nth-child(14)').remove();


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
            win.document.write(ttl_stock.innerHTML);
            win.document.close();
            win.print();
        }
    }


    function sel_category(){
    $cat = $('#category').val();
    $data = {
      "category": $cat
    };
    if ($cat == 4) {
      $('#prod_name').val('P.O');
      $('#prod_name').hide();
        $.ajax({
      url: "select_variant.php",
      type: "POST",
      data: $data,
      success: function(response){
        $('#variation').show();
        $('#variant').html(response);
        $('#p_price').val(0);
        $('#p_price').hide();
        $('#s_price').attr("placeholder", "P.O Card Value");
      }
    })
    }else{
      $.ajax({
      url: "select_variant.php",
      type: "POST",
      data: $data,
      success: function(response){
        $('#prod_name').val('');
        $('#variation').show();
        $('#prod_name').show();
        $('#variant').html(response);
        $('#p_price').val('');
        $('#p_price').attr("placeholder", "Regular Price");
        $('#s_price').attr("placeholder", "Selling Price");
        $('#p_price').show();
      }
    })
    }
  }

  // $('#printNow').click(function(){

  //    var excel_data = $('#show_sorted_table').html();  
  //    var page = "excel.php?data=" + excel_data;  
  //    window.location = page;  

  // })

  function sel_option(){
    $opt = $('#opt').val();
    if($opt == 0){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per item (In stocks)");
       $qt.fadeIn();
    }else if ($opt == 1) {
       $qt = $('#quantity').attr("placeholder", "Enter quantity per case (In stocks)");
       $qt.fadeIn();
    }else if($opt == 2){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per bottle (In stocks)");
       $qt.fadeIn();
    }else if($opt == 3){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per box (In stocks)");
       $qt.fadeIn();
    }
    else if($opt == 4){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per sack (In stocks)");
       $qt.fadeIn();
    }else{
       $qt.hide();
    }
  }


    // $('#inv_date').keyup(function(){
    //   document.getElementById("select").selectedIndex = 0;
    // })

    $('#search_inventory').click(function(){

      $cat = $('#category1').val();
      $mn = $('#month').val();
      $yr = $('#year').val();
      
      if ($cat == null || $mn == null || $yr == null) {
        alert('Please select date or category!');
      }else{

        $data = {
          "month": $mn,
          "year": $yr,
          "category":$cat
        };
        $.ajax({
            url: "sort_inventory.php",
            type: "POST",
            data: $data,
            success: function(response){
              document.getElementById("category1").selectedIndex = 0;
              document.getElementById("month").selectedIndex = 0;
              document.getElementById("year").selectedIndex = 0;
              $('#show_sort_results').html(response);
              $d2 = $d.toDateString();
              $('#current_date').text($d);
            }
          })
        


      }


    })

function fnExcelReport(){
    
    var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
    var textRange; var j=0;
    tab = document.getElementById('dataTable'); // id of table
    $('#dataTable th:nth-child(14),#dataTable td:nth-child(14)').remove();
    $d = new Date();
    

    for(j = 0 ; j < tab.rows.length ; j++) 
    {     
        tab_text=tab_text+tab.rows[j].innerHTML+"</tr>";
        //tab_text=tab_text+"</tr>";
    }
    tab_text=header.innerHTML+tab_text;
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




    // function sel_date(){
    // $cat = $('#category').val();
    // $d = $('#inv_date').val();
    // $data = {
    //   "date_stock_in": $d,
    //   "category": $cat
    // };
    // $.ajax({
    //     url: "sort_inventory_date.php",
    //     type: "POST",
    //     data: $data,
    //     success: function(response1){
    //       $('#show_sort_results').html(response1);
    //       $d2 = $d.toDateString();
    //       $('#current_date').text($d);
    //     }
    //   })
    // }

</script>