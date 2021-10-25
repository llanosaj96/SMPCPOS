<?php
include'../includes/connection.php';
include'../includes/topp.php';
// session_start();
$product_ids = array();
//session_destroy();




//check if Add to Cart button has been submitted


if(filter_input(INPUT_POST, 'addpos')){
    $check_product_stock = @$_POST['product_id'];
    $customer_qty = @$_POST['quantity'];
    $ended = '';


    $sqls = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID = '$check_product_stock' AND DELIVERY_ENDED !='YES' ");
    while ($rows = mysqli_fetch_assoc($sqls)) {
      $stock_on_hand = $rows['DELIVERY_QTY'];
      $new_on_hand = $stock_on_hand - $customer_qty;
      if ($stock_on_hand < $customer_qty) {
        echo "<script> alert('Product out of stock!'); </script>";
      }else{

        // PROCEED TO SAVING SESSION ITEM
        if ($new_on_hand == 0) {
          $ended = 'YES';
        }else{
          $ended = 'NO';
        }
        $sql02 = mysqli_query($db, "UPDATE product SET DELIVERY_QTY='$new_on_hand', DELIVERY_ENDED='$ended' WHERE PRODUCT_ID='$check_product_stock'  ");
        $new_sold = '';
        $sql03 = mysqli_query($db, " SELECT * FROM product WHERE PRODUCT_ID='$check_product_stock' ");
        while ($row03 = mysqli_fetch_assoc($sql03)) {
          $current_sold = $row03['SOLD'];
          $new_sold = $customer_qty + $current_sold;
          $sql04 = mysqli_query($db, "UPDATE product SET SOLD='$new_sold' WHERE PRODUCT_ID='$check_product_stock' ");

        }


        if(isset($_SESSION['pointofsale'])){
        
        //keep track of how mnay products are in the shopping cart
        $count = count($_SESSION['pointofsale']);
        
        //create sequantial array for matching array keys to products id's
        $product_ids = array_column($_SESSION['pointofsale'], 'id');

        if (!in_array(filter_input(INPUT_GET, 'id'), $product_ids)){
        $_SESSION['pointofsale'][$count] = array
            (
                'id' => filter_input(INPUT_GET, 'id'),
                'name' => filter_input(INPUT_POST, 'name'),
                'price' => filter_input(INPUT_POST, 'price'),
                'quantity' => filter_input(INPUT_POST, 'quantity'),
                'variant_id' => filter_input(INPUT_POST, 'variant_id')
            );   
        }
        else { //product already exists, increase quantity
            //match array key to id of the product being added to the cart
            for ($i = 0; $i < count($product_ids); $i++){
                if ($product_ids[$i] == filter_input(INPUT_GET, 'id')){
                    //add item quantity to the existing product in the array
                    $_SESSION['pointofsale'][$i]['quantity'] += filter_input(INPUT_POST, 'quantity');
                }
            }
        }
        
    }
    else { //if shopping cart doesn't exist, create first product with array key 0
        //create array using submitted form data, start from key 0 and fill it with values
        $_SESSION['pointofsale'][0] = array
        (
            'id' => filter_input(INPUT_GET, 'id'),
            'name' => filter_input(INPUT_POST, 'name'),
            'price' => filter_input(INPUT_POST, 'price'),
            'quantity' => filter_input(INPUT_POST, 'quantity'),
            'variant_id' => filter_input(INPUT_POST, 'variant_id')
        );
    }



        // END OF SAVING SESSION ITEM



      }
    }
}

if(filter_input(INPUT_GET, 'action') == 'delete'){



    //loop through all products in the shopping cart until it matches with GET id variable
    foreach($_SESSION['pointofsale'] as $key => $product){
        if ($product['id'] == filter_input(INPUT_GET, 'id')){
            //remove product from the shopping cart when it matches with the GET id
            $p_id = $product['id'];
            $p_qty = $product['quantity'];
            $sql002 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID='$p_id' ");
            while ($row002 = mysqli_fetch_assoc($sql002)) {
              $stock_onh = $row002['DELIVERY_QTY'];
              $end = $row002['DELIVERY_ENDED'];

              if ($stock_onh == 0) {
                
                $sqlll = mysqli_query($db, "UPDATE product SET DELIVERY_ENDED='NO' WHERE PRODUCT_ID='$p_id' ");

              }
              
              $new_onh = $stock_onh + $p_qty;
              $sql003 = mysqli_query($db, "UPDATE product SET DELIVERY_QTY='$new_onh' WHERE PRODUCT_ID='$p_id' ");

              $new_sold = '';
              $sql03 = mysqli_query($db, " SELECT * FROM product WHERE PRODUCT_ID='$p_id' ");
              while ($row03 = mysqli_fetch_assoc($sql03)) {
                $current_sold = $row03['SOLD'];
                $new_sold = $current_sold - $p_qty;
                $sql04 = mysqli_query($db, "UPDATE product SET SOLD='$new_sold' WHERE PRODUCT_ID='$p_id' ");
                unset($_SESSION['pointofsale'][$key]);
              }

             
            }
        }
    }
    //reset session array keys so they match with $product_ids numeric array
    $_SESSION['pointofsale'] = array_values($_SESSION['pointofsale']);
}

//pre_r($_SESSION);

function pre_r($array){
    echo '<pre>';
    print_r($array);
    echo '</pre>';
}
                ?>
                <div class="row">
                <div class="col-lg-12">
                  <div class="card shadow mb-0">
                  <div class="card-header py-2">
                    <h4 style="color: green;">Product category</h4>
                  </div>
                        <!-- /.panel-heading -->
                        <div class="card-body">
                            <!-- Nav tabs -->
                            

                              <?php
                              $ul = '';
                              $sql001 = mysqli_query($db, "SELECT * FROM category");
                                while ($row001 = mysqli_fetch_assoc($sql001)) {
                                  $name001 = $row001['CNAME'];
                                  $ID001 = $row001['CATEGORY_ID'];

                                $ul .= " <a style='color:green;' class='nav-link' href='#' data-id='$ID001' data-role='select_category'>$name001</a>";
                                
                              }

                            ?>

                              <div  class="nav nav-tabs">
                                <?php echo $ul; ?>
                                

                              </div>
                              <div class="showInfo" style="padding: 5px;"> </div>
                              <script type="text/javascript" src="jquery-3.3.1.js"></script>
                              <script type="text/javascript">
                                $(document).on('click','a[data-role=select_category]',function(){
                                  var rec  = $(this).data('id');
                                  // alert(rec);
                                  var dat = {
                                    "recordNo": rec
                                  };
                                  
                                  if (rec == 12) {
                                    $.ajax({
                                      url:"delivery_pos.php",
                                      method: "POST",
                                      data: dat,
                                      success: function(response){
                                        $('.showInfo').html(response);

                                      }
                                    })
                                  }else{
                                    $.ajax({
                                      url:"postabpane.php",
                                      method: "POST",
                                      data: dat,
                                      success: function(response){
                                        $('.showInfo').html(response);

                                      }
                                    })
                                  }

                                });
                              </script>

<!--                               <ul>
                                <li class="nav-item">
                                <a class="nav-link" href="#" data-target="#rice" data-toggle="tab">Rice</a>
                              </li>
                              <li class="nav-item">
                                <a class="nav-link" href="#butane" data-toggle="tab">Butane</a>
                              </li>
                              </ul>
                               -->
                            



<!-- TAB PANE AREA - ANG UNOD KA TABS ARA SA TABPANE.PHP -->

<!-- END TAB PANE AREA - ANG UNOD KA TABS ARA SA TABPANE.PHP -->
        
        <div style="clear:both"> </div>  
        <br />  
        <div class="card shadow mb-4 col-md-12">
        <div class="card-header py-3 bg-white">
          <h4 style="color: green;">Point of Sale</h4>
        </div>
        
      <div class="row">    
      <div class="card-body col-md-9">
        <div class="table-responsive">

        <!-- trial form lang   -->

       <div class="modal fade" id="cancelModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirm Product Cancellation </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
               
                 <div class="form-group">
                   <input class="form-control" type="password" id="admin_password" placeholder="Enter admin password" name="admin_password" required>
                 </div>

                  <hr>
                  <span class="show_btn" style="display: none;">  <button type="submit" onclick="cancel()" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Confirm</button> </span>
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>      
              </div>
            </div>
          </div>
        </div> 


        <div class="modal fade" id="specialModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Confirm Special Price </h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span>
                </button>
              </div>
              <div class="modal-body">
                 <div class="form-group">
                   <input class="form-control" type="password" id="admin_password1" placeholder="Enter admin password" name="admin_password1" required>
                    
                 </div>
                 <div>
                   <input class="form-control" style="display: none;" type="text" id="special_price" placeholder="Enter special price" name="admin_password" required>
                 </div>

                  <hr>
                  <span class="show_btn_special" style="display: none;">  <button type="submit" data-dismiss="modal" onclick="show_price_input()" class="btn btn-success"><i class="fa fa-check fa-fw"></i>Confirm</button> </span> 
                  <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>    
              </div>
            </div>
          </div>
        </div> 



<form role="form" method="post" action="pos_transac.php?action=add">
  <input type="hidden" name="employee" value="<?php echo $_SESSION['FIRST_NAME']; ?>">
  <input type="hidden" name="role" value="<?php echo $_SESSION['JOB_TITLE']; ?>">
  
        <table class="table">    
        <tr>  
             <th width="55%">Product Name</th>  
             <th width="10%">Quantity</th>  
             <th width="15%">Price</th>  
             <th width="15%">Total</th>  
             <th width="5%">Action</th>  
        </tr>  
        <?php  

        if(!empty($_SESSION['pointofsale'])):  
            
             $total = 0;  
             $pname = '';
        
             foreach($_SESSION['pointofsale'] as $key => $product): 
              $pname = $product['id'];
              $vars = '';
              $sqla = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID='$pname' AND ENDED !='YES' ");
              while ($rowa = mysqli_fetch_assoc($sqla)) {
                $variant_a = $rowa['VARIANT_ID'];
                $sqlb = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='$variant_a' ");
                while ($rowb = mysqli_fetch_assoc($sqlb)) {
                  $vars = $rowb['variant'];
                }
              }
                  
        ?>  
        <tr>  
          <td>
             <input type="hidden" name="id[]" value="<?php echo $product['id']; ?>">
             <input type="hidden" name="variant_id[]" value="<?php echo $product['variant_id']; ?>">
            <input type="hidden" name="name[]" value="<?php echo $product['name'];echo " "; echo $vars; ?>">
            <?php echo $product['name']; echo " "; echo "<i> $vars </i>"; ?>
          </td>  

           <td>
            <input type="hidden" name="quantity[]" value="<?php echo $product['quantity']; ?>">
            <?php echo $product['quantity']; ?>
          </td>  

           <td>
            <input type="hidden" name="price[]" value="<?php echo $product['price']; ?>">
            ₱ <?php echo number_format($product['price']); ?>
          </td>  

           <td>
            <input type="hidden" name="total" value="<?php echo $product['quantity'] * $product['price']; ?>">
            ₱ <?php echo number_format($product['quantity'] * $product['price'], 2); ?></td>  
           <td>
               <a href="#" data-toggle="modal" data-target="#cancelModal" id="trash">
                    <div class="btn bg-gradient-danger btn-danger"><i class="fas fa-fw fa-trash" ></i></div>
               </a>
           </td>  
        </tr>
        <?php  
                  $total = $total + ($product['quantity'] * $product['price']);
             endforeach;  
        ?>


        <?php  
        endif;
        ?>  
        </table> 


           <!-- MODAL FOR PRODUCT CANCELLATION -->
          
          
          <span style="display: none;"> <a class="btn btn-success" id="proceed_cancel" href="pos.php?action=delete&id=<?php echo $pname; ?>" ><i class="fa fa-check fa-fw"></i>Confirm</a> </span>


         </div>
       </div> 

<?php
include 'posside.php';
include'../includes/footer.php';
?>
<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">

    $('#trash').click(function(){
          $pass = document.getElementById('admin_password').autofocus;
    })

    function cancel(){
             $(document).ready(function(){ 
           $('#proceed_cancel')[0].click(function(){
           }); 
      });
    }

  $('#admin_password').keyup(function(){

  
    
    $pass = document.getElementById('admin_password').value;
    $data = {
      "password": $pass
    };
    $.ajax({
      url: "check_password.php",
      type: "POST",
      data: $data,
      success: function(resp){
        if (resp == '1') {
          $(".show_btn").show();
          $("#admin_password").css("border-color","green");
        }else{
          $("form").submit(function(e){
                e.preventDefault(e);
            });
          $('.show_btn').hide();
          $("#admin_password").css("border-color","red");
        }
      }
    })
  })

</script>