
      <div class="row">
          <?php 
            include'../includes/connection.php';
            $rec = @$_POST['recordNo'];
            $query = "SELECT * FROM product WHERE CATEGORY_ID='$rec' AND ON_HAND!=0 AND ENDED !='YES' GROUP BY PRODUCT_CODE ORDER by PRODUCT_CODE ASC";
            $result = mysqli_query($db, $query);

            if ($result):
                if(mysqli_num_rows($result)>0):
                    while($product = mysqli_fetch_assoc($result)):
                      $on_hand = $product['ON_HAND'];
                      $vid = $product['VARIANT_ID'];
                      $corb = $product['CASEORBOTTLE'];
                      $var = '';
                      $sql = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='$vid' ");
                      while($variant = mysqli_fetch_assoc($sql)){
                        $var = $variant['variant'];
                        
                      }

                    //print_r($product);
          ?>


          <!-- SPECIAL PRICE -->

          





        <div class="col-sm-4 col-md-2" >
          <form method="post" id="submit_frm" action="pos.php?action=add&id=<?php echo $product['PRODUCT_ID']; ?>">
              <div class="products">

                  <label>stock: </label>
                  <input type="hidden" name="ids" id="ids" value="<?php echo $product['PRODUCT_ID']; ?>">
                  <input type="text" name="stock_available" class="stock_available" readonly value="<?php echo $on_hand; echo "($corb)" ?>" style="background-color: transparent; width: 70%; border:none;">
                  <h6 class="text-info"><?php echo $product['NAME']; echo " | "; echo $var; ?></h6>
                  <h6>regular: ₱ <input type="text" style="width: 50%; border: none; background: transparent; color: grey;" readonly autocomplete="off" name="price" id="new_price" value="<?php echo $product['PRICE']; ?>" /></h6>
                  <!-- <h6>special: ₱ </h6> -->
                  <input type="text" name="quantity" placeholder="Enter Quantity" class="form-control" required="" autocomplete="off" />
                  <input type="hidden" name="name" value="<?php echo $product['NAME']; ?>" />
                  <input type="hidden" name="product_id" value="<?php echo $product['PRODUCT_ID']; ?>" />     
                   <input type="hidden" name="variant_id" value="<?php echo $vid; ?>" />
                   
                  <input type="submit" name="addpos" id="btn_addpos" style="margin-top:5px; width: 100%;" class="btn btn-info"
                         value="ADD" />
                   <input type="submit" data-toggle="modal" data-target="#specialModal"  style="margin-top:5px; width: 100%; background: none; border: none; color: green; font-style: italic; font-size: 15px;" class="btn btn-info"
                         value=" Add Special Price" />

              </div><!-- <p style="font-size: 12px; width: 100%;"> NO MIXING OF REGULAR AND SPECIAL PRICE OF SAME PRODUCT</p> -->
          </form>
      </div>
          <?php endwhile; ?>
        </div>
                <?php
            endif;
        endif;   
        ?>
<style type="text/css">
  label{
    font-size: 14px;
  }
  .stock_available{
    color: green;
    font-style: italic;
    font-size: 14px;
  }
</style>
<!-- <script type="text/javascript">
    var stock_av = $('.stock_available').val();
    if (stock_av <= 10) {
      $(".stock_available").css("color","red");
    }else{

    }
    $SPP = $('#spp').val();
    if ($SPP == 0) {
      $('#addpos_special').hide();
    }else{
       $('#addpos_special').show();
    }
   
</script> -->
<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">
  $('#admin_password1').keyup(function(){
  $pass1 = document.getElementById('admin_password1').value;
    $data1 = {
      "password": $pass1
    };
    $.ajax({
      url: "check_password.php",
      type: "POST",
      data: $data1,
      success: function(resp){
        if (resp == '1') {
          $(".show_btn_special").show();
          $("#admin_password1").css("border-color","green");
          $('form [name="price"]').css("color","red");
          $("form").unbind("submit");
        }else{
          $("form").submit(function(e){
                e.preventDefault(e);
            });
          $('.show_btn').hide();
          $("#admin_password1").css("border-color","red");
           $('#special_price').hide();
        }
      }
    })
})


  function show_price_input(){
    $('form input[id="new_price"]').css("border"," 1px solid red");
    $('form input[type="text"]').prop("readonly", false);
  }





</script>