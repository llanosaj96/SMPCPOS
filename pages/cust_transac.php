<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
?><?php 

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
          <!-- Page Content -->
          <div class="col-lg-12">
            <?php
              $fname = $_POST['firstname'];
              $lname = $_POST['lastname'];
              $pn = $_POST['phonenumber'];
              $addr = $_POST['address'];
              $po_card_no = $_POST['po_card_no'];
              $po_member = $_POST['po_avail'];
              $pos_date = $_POST['pos_date_issued'];
              date_default_timezone_set('Asia/Manila');
              $pos_due1 = new DateTime("+2 months");
              $pos_due = $pos_due1->format('Y-m-d');
              $ISSUED = '';
              $DUE = '';
              if (empty($pos_date)) {
                $ISSUED = 'none';
                $DUE = 'none';
              }else{
                $ISSUED = $pos_date;
                $DUE = $pos_due;
              }

        
              switch($_GET['action']){
                case 'add':     
                    $query = "INSERT INTO customer
                    (CUST_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, PO_MEMBER,PO_DATE_ISSUED, PO_DATE_DUE,ADDRESS,PO_CARD_NO)
                    VALUES (Null,'{$fname}','{$lname}','{$pn}','{$po_member}','$ISSUED','$DUE','$addr','$po_card_no')";
                    mysqli_query($db,$query)or die ('Error in updating Database');
                break;
              }
            ?>
              <script type="text/javascript">
                window.location = "customer.php";
              </script>
          </div>

<?php
include'../includes/footer.php';
?>