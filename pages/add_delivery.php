<?php
include'../includes/connection.php';
include'../includes/sidebar.php';

$vari = "";
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

  $query = 'SELECT REGULAR_PRICE, ON_HAND, PRODUCT_ID,PRODUCT_CODE, NAME, DESCRIPTION, QTY_STOCK, PRICE, c.CNAME FROM product p join category c on p.CATEGORY_ID=c.CATEGORY_ID WHERE PRODUCT_ID ='.$_GET['id'];
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
      $beg = $row['ON_HAND'];

      $sql11 = mysqli_query($db, "SELECT * FROM product WHERE PRODUCT_ID='$zz' ");
      while ($row11 = mysqli_fetch_assoc($sql11)) {
        $varID = $row11['VARIANT_ID'];
        $sql12 = mysqli_query($db, "SELECT * FROM variation WHERE rec_no='$varID' ");
        while ($row12 = mysqli_fetch_assoc($sql12)) {
          $vari = $row12['variant'];
        }

      }

    }
      $id = $_GET['id'];




?>

  <center><div class="card shadow mb-4 col-xs-12 col-md-8 border-bottom-primary">
            <div class="card-header py-3">
              <h4 class="m-2 font-weight-bold text-primary">Delivery</h4>
            </div>
            <a href="product.php?action=add" type="button" class="btn btn-primary bg-gradient-primary">Back</a>
            <div class="card-body">

            <form role="form" method="post" action="add_delivery_now.php">
              <input type="hidden"  name="id" value="<?php echo $zz; ?>" />
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
                  <input class="form-control" placeholder="Product Name" name="prodname" value="<?php echo $A; echo " "; echo $vari; ?>" readonly>
                </div>
              </div>
<!--               <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Description:
                </div>
                <div class="col-sm-9">
                   <textarea class="form-control" placeholder="Description" name="description" readonly><?php echo $B; ?></textarea>
                </div>
              </div> -->
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 Regular Price:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Regular price" name="reg_price" value="<?php echo $reg; ?>" readonly>
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;" required>
                 Delivery Date:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" type="date" name="delivery_date" >
                </div>
              </div>
              <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;">
                 Selling Price:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Selling price" name="selling_price" value="<?php echo $C; ?>" required>
                </div>
              </div>
<!--               <div class="form-group row text-left text-warning">
                <div class="col-sm-3" style="padding-top: 5px;">
                 On Hand(Beginning Balance):
                </div>
                <div class="col-sm-9">
                  <input class="form-control" name="beg_balance" value="<?php echo $beg; ?>" readonly>

                </div>
              </div> -->
              <div class="form-group row text-left text-warning">
                  <div class="col-sm-3" style="padding-top: 5px; color: green; font-weight: bold;">
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
                 Quantity:
                </div>
                <div class="col-sm-9">
                  <input class="form-control" placeholder="Out stocks" name="quantity" autocomplete="off">
                </div>
              </div>

              <hr>

                <button type="submit" class="btn btn-warning btn-block"><i class="fa fa-edit fa-fw"></i>Add to delivery</button>    
              </form>  
            </div>
          </div></center>

<?php
include'../includes/footer.php';
?>