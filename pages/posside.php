<!-- SIDE PART NA SUMMARY -->
        <div class="card-body col-md-3">
        <?php   
        if(!empty($_SESSION['pointofsale'])):  
            
             $total = 0;  
        
             foreach($_SESSION['pointofsale'] as $key => $product): 
        ?>  
        <?php  
                  $total = $total + ($product['quantity'] * $product['price']);
                  $lessvat = ($total / 1.12) * 0.12;
                  $netvat = ($total / 1.12);
                  $addvat = ($total / 1.12) * 0.12;



             endforeach;

//DROPDOWN FOR CUSTOMER
$sql = "SELECT CUST_ID, FIRST_NAME, LAST_NAME
        FROM customer
        order by FIRST_NAME asc";
$res = mysqli_query($db, $sql) or die ("Error SQL: $sql");

$opt = "<select class='form-control'  style='border-radius: 0px;' name='customer' required>
        <option value='' disabled selected hidden>Select Customer</option>";
  while ($row = mysqli_fetch_assoc($res)) {
    $opt .= "<option value='".$row['CUST_ID']."'>".$row['FIRST_NAME'].' '.$row['LAST_NAME']."</option>";
  }
$opt .= "</select>";
// END OF DROP DOWN
        ?>  
<?php 
          echo "Today's date is : "; 
          date_default_timezone_set('Asia/Manila');
          $today = date("Y-m-d H:i a"); 
          echo $today; 
?> 
          <input type="hidden" name="date" value="<?php echo $today; ?>">
          <div class="form-group row text-left mb-3">
            <div class="col-sm-12 text-primary btn-group">
            <?php echo $opt; ?>
            <a  href="#" data-toggle="modal" data-target="#poscustomerModal" type="button" class="btn btn-primary bg-gradient-primary" style="border-radius: 0px;"><i class="fas fa-fw fa-plus"></i></a>
            </div>

          </div>
          <div class="form-group row mb-2">

            <div class="col-sm-5 text-left text-primary py-2">
              <h6>
                Subtotal
              </h6>
            </div>
            <div class="col-sm-7">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">₱</span>
                </div>
                <input type="text" class="form-control text-right " value="<?php echo number_format($total, 2); ?>" readonly name="subtotal">
              </div>
            </div>

          </div>
          <div class="form-group row mb-2">

            <div class="col-sm-5 text-left text-primary py-2">
              <h6>
                Less VAT
              </h6>
            </div>

            <div class="col-sm-7">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">₱</span>
                </div>
                <input type="text" class="form-control text-right " value="<?php echo number_format($lessvat, 2); ?>" readonly name="lessvat">
              </div>
            </div>

          </div>
          <div class="form-group row mb-2">

            <div class="col-sm-5 text-left text-primary py-2">
              <h6>
                Net of VAT
              </h6>
            </div>

            <div class="col-sm-7">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">₱</span>
                </div>
                <input type="text" class="form-control text-right " value="<?php echo number_format($netvat, 2); ?>" readonly name="netvat">
              </div>
            </div>

          </div> 
          <div class="form-group row mb-2">

            <div class="col-sm-5 text-left text-primary py-2">
              <h6>
                Add VAT
              </h6>
            </div>

            <div class="col-sm-7">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">₱</span>
                </div>
                <input type="text" class="form-control text-right " value="<?php echo number_format($addvat, 2); ?>" readonly name="addvat">
              </div>
            </div>

          </div>
          <div class="form-group row text-left mb-2">

            <div class="col-sm-5 text-primary">
              <h6 class="font-weight-bold py-2">
                Total
              </h6>
            </div>

            <div class="col-sm-7">
              <div class="input-group mb-2">
                <div class="input-group-prepend">
                  <span class="input-group-text">₱</span>
                </div>
                <input type="text" class="form-control text-right " value="<?php echo number_format($total, 2); ?>" readonly name="total">
              </div>
            </div>

          </div>
<?php endif; ?>       
          <button type="button" class="btn btn-block btn-success" data-toggle="modal" data-target="#posMODAL">SUBMIT</button>

        <!-- Modal -->
        <div class="modal fade" id="posMODAL" tabindex="-1" role="dialog" aria-labelledby="POS" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalCenterTitle">SUMMARY</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                  <div class="form-group row text-left mb-2">

                    <div class="col-sm-12 text-center">
                      <h3 class="py-0">
                        GRAND TOTAL
                      </h3>
                      <h3 class="font-weight-bold py-3 bg-light">
                        ₱ <?php echo number_format($total, 2); ?>
                        <input type="hidden" id="grand_total" name="grand_total" readonly value="<?php echo number_format($total); ?>">
                      </h3>
                    </div>

                  </div>

                    <div class="col-sm-12 mb-2">
                      <div class="form-group" style="margin-bottom: 3px;">
                          <input type="date" id="specific_date" name="specific_date" class="form-control" required>
                        </div>
                      <div class="input-group mb-2">
                        
                        <select class="form-control" name="mode" id="mode" style="max-width: 20%;">
                          <option selected disabled value="0">mode</option>
                          <option value="cash"> cash </option>
                          <option value="credit"> credit </option>
                        </select>
                        <div class="input-group-prepend">
                          <span class="input-group-text">₱</span>
                        </div>
                          <input class="form-control text-right" id="txtNumber" onkeypress="return isNumberKey(event)" type="text" placeholder="ENTER CASH" autocomplete="off" name="customer_cash" required>
                          <span class="change"> </span>

                    </div>
                    <div class="form-group" style="margin-top: -5px;">
                        <input type="text" pattern="\d*" id="or_number" class="form-control" name="or_number" onkeypress="return isNumberKey(event)" autocomplete="off" placeholder="OR/SI number" maxlength="10" required>
                       
                  </div>
                  <div class="form-group" style="margin-top: -5px;">
                    <input type="checkbox" name="po_customer" onclick="show_control_no()"> P.O
                  </div>
                  <div style="display: flex;">
                  <input type="text" pattern="\d*" id="control_no1" class="form-control" name="po_customer1" onkeypress="return isNumberKey(event)" autocomplete="off" placeholder="beginning no." style="display: none;">
                    <input type="text" pattern="\d*" id="control_no2" name="po_customer2" class="form-control" onkeypress="return isNumberKey(event)" autocomplete="off" placeholder="ending no." style="display: none;">
                  </div>
                  </div>

                  

              </div>
              <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-block">PROCEED TO PAYMENT</button>
              </div>
            </div>
          </div>
        </div>
        <!-- END OF Modal -->

        </form>
      </div> <!-- END OF CARD BODY -->

     </div>

<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">
  
  function show_control_no(){


    if($('input[name="po_customer"]').is(':checked'))
    {
      $('#control_no1').attr("required", "required");
      $('#control_no2').attr("required", "required");
      $('#control_no1').slideDown();
      $('#control_no2').slideDown();
    }else{
      $('#control_no1').slideUp();
      $('#control_no2').slideUp();
    }

  }

</script>
<!-- <script type="text/javascript">

  $('#mode').click(function(){
      $md = $('#mode').val();
      $or_no = $('#or_number');
      if ($md == 'credit') {
        $or_no.hide();
        $('#or_number').val('0000');
      }else{
        $or_no.show();
        $('#or_number').val('');
      }
  })
</script>
 <script type="text/javascript">
  var element = document.querySelector('select');

element.addEventListener('mousedown', function () {
  this.size=10;
});
element.addEventListener('change', function () {
  this.blur();
});
element.addEventListener('blur', function () {
  this.size=0;
});
</script> -->