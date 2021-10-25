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

$opt = "<select class='form-control' name='category' required>
        <option value='' disabled selected hidden>Select Category</option>";
  while ($row = mysqli_fetch_assoc($result)) {
    $opt .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
  }

$opt .= "</select>";

  $query = 'SELECT REGULAR_PRICE, ON_HAND, PRODUCT_ID,PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, PRICE, DATE_STOCK_IN, c.CNAME FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE PRODUCT_ID ='.$_GET['id'].' AND ENDED!="YES" ';
  $result = mysqli_query($db, $query) or die(mysqli_error($db));
    while($row = mysqli_fetch_array($result))
    {   
      $zz = $row['PRODUCT_ID'];
      $zzz = $row['PRODUCT_CODE'];
      $A = $row['NAME'];
      $B = $row['DESCRIPTION'];
      $C = $row['PRICE'];
      $D = $row['CNAME'];
      $reg = $row['REGULAR_PRICE'];
      $DSIN = $row['DATE_STOCK_IN'];
      $beg = $row['ON_HAND'];
    }
      $id = $_GET['id'];
?>

  <center><div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Edit Product</h4>
            </div>
            <a href="product.php?action=add" type="button" class="btn btn-primary bg-gradient-primary">Back</a>
            <div class="card-body">

            <form role="form" method="post" action="pro_edit1.php">
              <input type="hidden" name="id" value="<?php echo $zz; ?>" />
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Product Code:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Product Code" name="prodcode" value="<?php echo $zzz; ?>" readonly>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Product Name:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Product Name" name="prodname" value="<?php echo $A; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Description:
                </div>
                <div class="col-sm-9">
                   <textarea class="form-control" placeholder="Description" name="description"><?php echo $B; ?></textarea>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Regular Price:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Regular price" name="reg_price" value="<?php echo $reg; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Selling Price:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Selling price" name="selling_price" value="<?php echo $C; ?>" required>
                  <input type="hidden" class="form-control"  placeholder="Selling price" name="selling_price_old" value="<?php echo $C; ?>" required>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 On Hand:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" name="beg_balance" value="<?php echo $beg; ?>" readonly>

                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;">
                 In Stock Date:
                </div>
                <div class="col-sm-9">
                  <input type="date" required class="form-control" name="in_stock_date">
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                  <div class="col-sm-3" style="padding-top: 5px;">
                 Unit:
                </div>
                   <div class="col-sm-9">
                  <select id="opt" class='form-control' name='opt' required>
                  <option disabled selected hidden>Select...</option>
                  <option value="0"> per item </option>
                  <option value="1"> Per case </option>
                  <option value="2">Per bottle </option>
                  <option value="3">Per box </option>
                  <option value="4">Per sack </option>
                 </select>
                 </div>         
               </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;">
                 In Stocks(New):
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="In stocks" name="in_stocks" autocomplete="off">
                  <input type="hidden" readonly name="date_stock_in" value="<?php echo $DSIN; ?>">
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                   <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;">
               Supplier:
                </div>
                  <div class="col-sm-9">
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
                            <option disabled selected hidden>Select </option>";
                      while ($row = mysqli_fetch_assoc($result2)) {
                        $sup .= "<option value='".$row['SUPPLIER_ID']."'>".$row['COMPANY_NAME']."</option>";
                      }

                    $sup .= "</select>";

                   echo $sup;
                 ?>
               </div>
                <div class="col-sm-9">
                  <div style="display: flex; color: green; font-weight: bold;" >

                  <input type="checkbox" name="po_customer" onclick="show_control_no()"> P.O
                  <input type="text" pattern="\d*" id="control_no1" class="form-control" name="po_customer1" onkeypress="return isNumberKey(event)" autocomplete="off" placeholder="beginning no." style="display: none; margin-left: 130px; margin-top: 15px;">
                    <input type="text" pattern="\d*" id="control_no2" name="po_customer2" class="form-control" onkeypress="return isNumberKey(event)" autocomplete="off" placeholder="ending no." style="display: none; margin-left: 30px; margin-top: 15px;">

                  </div>
                </div>
               </div>

              <hr>

                <button type="submit" class="btn btn-warning btn-block"><i class="fa fa-edit fa-fw"></i>Update</button>    
              </form>  
            </div>
          </div></center>

<?php
include'../includes/footer.php';
?>
<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">
  
   function show_control_no(){


    if($('input[name="po_customer"]').is(':checked'))
    {
      $('#control_no1').slideDown();
      $('#control_no2').slideDown();
       $('#control_no1').attr("required", "required");
      $('#control_no2').attr("required", "required");
    }else{
      $('#control_no1').slideUp();
      $('#control_no2').slideUp();
       $('#control_no1').attr("required", "none");
      $('#control_no2').attr("required", "none");
    }

  }
</script>