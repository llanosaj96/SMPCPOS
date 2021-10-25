
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


            <div class="card shadow mb-4">
            <div class="card-header py-3" style="display: flex; flex-direction: row;">
                  <h4 style="color: green; padding: 5px;">Product&nbsp;<a  href="#" data-toggle="modal" data-target="#aModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 7px; background: green; border-color: green; color: white;"><i class="fas fa-fw fa-plus"></i></a> &nbsp;</h4>
                  <h4 style="color: green; padding: 5px;">Category&nbsp;<a  href="#" data-toggle="modal" data-target="#bModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 7px; background: green; border-color: green; color: white;"><i class="fas fa-fw fa-plus"></i></a> &nbsp;</h4>
                  <h4 style="color: green; padding: 5px;">Variation&nbsp;<a  href="#" data-toggle="modal" data-target="#cModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 7px; background: green; border-color: green; color: white;"><i class="fas fa-fw fa-plus"></i></a> &nbsp;</h4>

                  <!-- <h4 style="color: green; padding: 5px;">Add/Change Price&nbsp;<a  href="#" data-toggle="modal" data-target="#dModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 7px; background: green; border-color: green; color: white;"><i class="fas fa-fw fa-plus"></i></a></h4> -->
                  <fieldset style="color: red;">
                    <b> NOTE:</b> Please check products below and edit if stock-in is/are the same.
                  </fieldset>
                   <button id='generate_btn' style="border-radius: 7px; background: green; border-color: green; color: white;"> GENERATE REPORT </button>
            
            </div>

            <div class="card-body">
              <div> 
                  <button id="view_price_list" style=" background: none; border: none; text-decoration: underline; color: green; cursor: pointer;" onclick="view_price_list_now()"> View Price List</button> <button style="display: none; background: none; border: none; text-decoration: underline; color: green; cursor: pointer;" id="hide_price_list_close" onclick="hide_price_list_close_now()"> Hide Price List</button>
                </div> <br/>
              <div style="padding: 5px; display: none;" id="price_table">


                <div class="form-group" >
                
                 <?php
                   // echo $aaa;
                      $cat = '';
                      $sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category order by CNAME asc";
                      $result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");
                        while ($row = mysqli_fetch_assoc($result)) {
                          $cat .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
                        }

                 ?>
                 <div style="display: flex; flex-direction: row;">
                  <div>
                   <label> Sort by: </label>
                 </div><div>
                  <select id="category_price" class='form-control' name='category_price' required onclick="sort_category()" style="margin-top: -7px; margin-left: 3px;">
                  <option disabled selected hidden>Select Category</option>
                  <?php echo $cat; ?>
                 </select>
               </div>
                 </div>
                 

              </div>




                 <button onclick="myApp01.printTable()"  class="btn btn-primary bg-gradient-primary" style="float: right; margin-top: -40px; background: green; border: green;" /> Print Price </button> 
              <h5> Price List: </h5>
              <div id="header" style="display: none;">
                <center>
                  <div class="card-body">
                     <br/> <br/>
                     <img src="../img/smpcemoji.png" style="margin-bottom: -37px; margin-left: -40px;">
                     <label> Sibonga Multi-Purpose Cooperative</label><br/>
                     <label> Poblacion, Sibonga, Cebu </label><br/>
                     <label> (032) 486 - 1023</label>
                     <br/> <br/>
                  </div>
                 
                </center>
                <label style="font-size: 18px; font-family: calibri;"> Price List </label>
                <br/> <br/> <hr/>
              </div>
              <div class="show_sorted_table" id="show_sorted_table"> 


                <table class="table table-bordered" id="print_price_table" width="100%" cellspacing="0">
                  <tr>
                    <th>Product Name</th>
                    <th>Regular Price</th>
                    <th>Selling Price</th>
                  </tr>
                </table>



               </div>
              <br/> <hr/> 
            </div>
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" > 
               <thead>
                   <tr>
                     <th>Name</th>
                     <th>Category</th>
                      <th>On Hand</th>
                      <th>Price</th>
                      <th>Unit</th>
                     <th>Action</th>
                   </tr>
               </thead>
          <tbody>

<?php                  
    $query = "SELECT * FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE ENDED !='YES' GROUP BY PRODUCT_CODE ORDER BY NAME ASC ";
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {
                $var = $row['VARIANT_ID'];
                $ccc = $row['CASEORBOTTLE'];
                $sql01 = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='$var' ");
                while ($row01 = mysqli_fetch_assoc($sql01)) {
                    $variant1 = $row01['variant'];
                    $pr = $row['PRICE'];
                    $pr1 = number_format($pr, 2);
                    $name1 = $row['CNAME'];
                    $qty = $row['ON_HAND'];
                    $ttl = $qty * $pr;
                    $ttl1 = number_format($ttl, 1);

                echo '<tr>';
                echo '<td>'. $row['NAME'].' ';
                echo "| $variant1 </td>";
                echo "<td> $name1 </td>";
                echo "<td>$qty </td>";
                echo "<td>₱ $pr1</td>";
                echo "<td> $ccc </td>";
                
                      echo '<td align="right"> <div class="btn-group">
                              <a type="button" class="btn btn-primary bg-gradient-primary" style="background: green; border-color: green; color: white;" href="pro_searchfrm.php?action=edit & id='.$row['PRODUCT_CODE'] . '"><i class="fas fa-fw fa-list-alt"></i> Details</a>
                            <div class="btn-group">
                              <a type="button" style="background: green; border-color: green; color: white;" class="btn btn-primary bg-gradient-primary dropdown no-arrow" data-toggle="dropdown" style="color:white;">
                              ... <span class="caret"></span></a>
                            <ul class="dropdown-menu text-center" role="menu">
                                <li>
                                  <a type="button" class="btn btn-warning bg-gradient-warning btn-block" style="border-radius: 0px;" href="pro_edit.php?action=edit & id='.$row['PRODUCT_ID']. '">
                                    <i class="fas fa-fw fa-edit"></i> UPDATE/ADD
                                  </a>
                                  <a type="button" class="btn btn-warning bg-gradient-warning btn-block" style="border-radius: 0px;" href="add_delivery.php?action=edit & id='.$row['PRODUCT_ID']. '">
                                    <i class="fas fa-fw fa-edit"></i> ADD TO DELIVERY
                                  </a>
                                </li>
                            </ul>
                            </div>
                          </div> </td>';
                echo '</tr> ';
                        }
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

  <!-- Product Modal-->
  <div class="modal fade" id="aModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="pro_transac.php?action=add">
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
                  $sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category order by CNAME desc";
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
              <input class="form-control" id="po_control_no_1" placeholder="Beginning" name="po_control_no_1"  style="margin-bottom: 15px; display: none;">  <input class="form-control" id="po_control_no_2" style="display: none;" placeholder="Ending" name="po_control_no_2" >
           </div>
           <div class="form-group">
             <textarea rows="5" cols="50" class="form-control" placeholder="Description" name="description"  required></textarea>
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
             <input style="display: none;" type="number"   class="form-control" autocomplete="off" id="quantity" name="quantity" required>
           </div>
           <div class="form-group">
             <input type="number"  class="form-control" placeholder="On Hand" name="onhand" required>
           </div>
           <div class="form-group">
             <input type="number"   class="form-control" id="p_price" placeholder="Regular Price" name="regular_price" required>
           </div>
           <div class="form-group">
             <input type="number"   class="form-control" id="s_price" placeholder="Selling Price" name="price" required>
           </div>
           <div class="form-group">
             <?php
               echo $sup;
             ?>
           </div>
           <div class="form-group">
             <input type="text" onfocus="(this.type='date')" onblur="(this.type='text')" class="form-control" placeholder="Date Stock In" name="datestock" required>
           </div>
<!--            <div class="form-group">
             <select class='form-control' id="invent" name="invent" onclick="show_sold()"> 
              <option selected disabled value="NO"> Inventory.. </option>
              <option value="YES"> YES </option>
              <option value="NO"> NO </option>
             </select>
           </div>
           <div class="form-group" class="showSold">
             <input type="text" name="beginning_balance" id="beginning_balance" class="form-control" placeholder="Beginning balance">
             <input type="text" class="form-control" id="total_sold_item" placeholder="Total stock out" name="total_sold_item">
           </div> -->
            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button type="reset" class="btn btn-danger"><i class="fa fa-times fa-fw"></i>Reset</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>


  <!-- Special Price Modal-->
  <div class="modal fade" id="dModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add/Change Price </h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="pro_addchangeprice.php?action=add">
         

           <div class="form-group">
             <div class="form-group">
             <?php
               // echo $aaa;
                  $cat21 = '';
                  $sql21 = "SELECT DISTINCT NAME, PRODUCT_ID FROM product ";
                  $result21 = mysqli_query($db, $sql21) or die ("Bad SQL: $sql");
                    while ($row21 = mysqli_fetch_assoc($result21)) {
                      $cat21 .= "<option value='".$row21['PRODUCT_ID']."'>".$row21['NAME']."</option>";
                    }

             ?>
             <div class="form-group">
             <select id="category" class='form-control' name='category_variant' required>
              <option disabled selected hidden>Select Product</option>
              <?php echo $cat21; ?>
             </select>
             </div>
             <div class="form-group">
             <select class="form-control" required name="price_type" id="price_type" onclick="newprice()">
               <option selected disabled>select... </option>
               <option value="regular">regular price </option>
               <option value="selling">selling price </option>
             </select>
             </div>
             <input style="display: none;" type="text" name="new_price" id="new_price" class="form-control">

           </div>
           </div>

            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>


   <!-- Category Modal-->
  <div class="modal fade" id="bModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="pro_category.php?action=add">
         

           <div class="form-group">
             <input class="form-control" placeholder="Category name" name="new_category" required>
           </div>

            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>
     <!-- Variant Modal-->
  <div class="modal fade" id="cModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Variant</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" action="pro_variant.php?action=add">
         

           <div class="form-group">
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
             <select id="category" class='form-control' name='category_variant' required>
              <option disabled selected hidden>Select Category</option>
              <option value="none">none</option>
              <?php echo $cat; ?>
             </select>

           </div>
             <input class="form-control" placeholder="Variant name" name="new_variant" required>
           </div>

            <hr>
            <button type="submit" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Save</button>
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
          </form>  
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript" src="jquery-3.3.1.js"></script>


<script type="text/javascript">



  $('#generate_btn').click(function(){
    var ans = confirm('Are you sure to set new month report?');
    if (ans == true ) {
      window.location.href='generate_inventory.php';
    }else{

    }
  })


  var myApp01 = new function () {
        this.printTable = function () {



            var tab = document.getElementById('print_price_table');

            var style = "<style>";
                style = style + "label {width: 100%;font: 17px Calibri;}";
                style = style + "table {width: 100%;font: 17px Calibri;}";
                style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
                style = style + "padding: 2px 3px;text-align: center;}";
                style = style + "</style>";

            var header = document.getElementById('header');

            var win = window.open('', '', 'height=700,width=700');
            win.document.write(style);          //  add the style.
            win.document.write(header.innerHTML);
            win.document.write(tab.outerHTML);
            win.document.close();
            win.print();
        }
    }


$('#total_sold_item').hide();


function show_sold(){
    
    var ins = document.getElementById('invent').value;
    if (ins == 'YES') {
      $('#total_sold_item').show();
    }else{
      $('#total_sold_item').hide();
    }

}


  function sel_category(){
    $cat = $('#category').val();
    $data = {
      "category": $cat
    };
    if ($cat == 14) {
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
          $('#po_control_no_1').show();
          $('#po_control_no_2').show();
          $('#po_control_no_1').attr("placeholder", "Beginning");
          $('#po_control_no_2').attr("placeholder", "Ending");
          $('#s_price').attr("placeholder", "P.O Card Value");
      }
    })
    }else{
      $.ajax({
      url: "select_variant.php",
      type: "POST",
      data: $data,
      success: function(response){
        $('#po_control_no_1').hide();
          $('#po_control_no_2').hide();
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
       $qt = $('#quantity').attr("placeholder", "Enter quantity per item");
       $qt.fadeIn();
    }else if ($opt == 1) {
       $qt = $('#quantity').attr("placeholder", "Enter quantity per case");
       $qt.fadeIn();
    }else if($opt == 2){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per bottle");
       $qt.fadeIn();
    }else if($opt == 3){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per box");
       $qt.fadeIn();
    }
    else if($opt == 4){
       $qt = $('#quantity').attr("placeholder", "Enter quantity per sack");
       $qt.fadeIn();
    }else{
       $qt.hide();
    }


  }

  function view_price_list_now(){
    $('#hide_price_list_close').show();
    $('#price_table').slideDown();
    $('#view_price_list').hide();


  }



  function hide_price_list_close_now(){
    $('#view_price_list').show();
    $('#price_table').slideUp();
    $('#hide_price_list_close').hide();

  }


  function newprice(){
    $ptype = $('#price_type').val();
    if ($ptype == 'regular') {
       $qt1 = $('#new_price').attr("placeholder", "Enter new regular price");
       $qt1.fadeIn();
    }else if($ptype == 'special'){
        $qt1 = $('#new_price').attr("placeholder", "Enter new special price");
       $qt1.fadeIn();
    }else{
      $qt1.hide();
    }
  }


  function sort_category(){
    $cat = $('#category_price').val();
    $data = {
      "price_sort": $cat,
    };
    $.ajax({
        url: "sort_price.php",
        type: "POST",
        data: $data,
        success: function(response){
          $('.show_sorted_table').html(response);
          $('.show_sorted_table').show();
        }
      })
  }

</script>