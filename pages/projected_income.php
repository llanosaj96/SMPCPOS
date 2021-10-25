

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

            <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 style="color: green;">Projected Income</h4>
              <div style="float: right;">
                
                <button  id="sudo" onclick="myApp.printTable()" class="btn btn-primary bg-gradient-primary" style=" margin-top: -40px; background: green; border: green;" /> Print </button>
                <button id="btnExport" onclick="fnExcelReport();" class="btn btn-primary bg-gradient-primary" style=" margin-top: -40px; background: green; border: green;" /> Download </button>
                <iframe id="txtArea1" style="display:none"></iframe>
              </div>
            </div>
            <div class="card-body">
              <form action="generate_proposed_income.php" method="POST">
               <button name="pi_beverage" class="btn btn-primary bg-gradient-primary" style=" width: 150px; background: green; border: green;" /> Generate Projected Income for Beverage </button> 
                   <button name="pi_agrivet" class="btn btn-primary bg-gradient-primary" style=" width: 150px; background: green; border: green;" /> Generate Projected Income for Agrivet </button> 
                   <button name="pi_po" class="btn btn-primary bg-gradient-primary" style=" width: 150px; background: green; border: green;" /> Generate Projected Income for Po Card </button> 
                   <button name="pi_catering" class="btn btn-primary bg-gradient-primary" style=" width: 150px; background: green; border: green;" /> Generate Projected Income for Catering </button> <br/> <br/>
              </form>
              <div class="form-group" style="display: flex; flex-direction: row;" id="ress">
                    <label>From: </label>
                    <div class="form-group">
                        <select id="month" class='form-control' name='month' style="margin-left: 20px;">
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
                      <label style="margin-left: 30px;">To: </label>
                      <div class="form-group">
                        <select id="month" class='form-control' name='month' style="margin-left: 20px;">
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
                      <div class="form-group">
                        <select id="year" class='form-control' name='year' style="margin-left: 40px;">
                          <option disabled selected hidden>Year</option>
                          <option value="2020"> 2020 </option>
                          <option value="2021"> 2021 </option>
                          <option value="2022"> 2022 </option>
                          <option value="2023"> 2023 </option>
                        </select>
                      </div>

                   
<!--                     <div class="form-group">
                   <?php
                     // echo $aaa;
                        $cat = '';
                        $sql = "SELECT DISTINCT CNAME, CATEGORY_ID FROM category order by CNAME asc";
                        $result = mysqli_query($db, $sql) or die ("Bad SQL: $sql");
                          while ($row = mysqli_fetch_assoc($result)) {
                            $cat .= "<option value='".$row['CATEGORY_ID']."'>".$row['CNAME']."</option>";
                          }

                   ?>
                   <select id="category" class='form-control' name='category' style="margin-left: 60px;">
                    <option disabled selected hidden>Select Category</option>
                    <?php echo $cat; ?>
                   </select>

                 </div> -->
                 <div class="form-group" style="margin-left: 80px;"> 
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
                <label style="font-size: 18px; font-family: calibri;"> Projected Income </label>
                <br/> <br/> <hr/>
              </div>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <!-- <th>Product Code</th> -->
                     <th>Income</th>
                     <th>Beverage</th>
                     <th> Agrivet </th>
                     <th>Po/Credit Card</th>
                     <th>Catering</th>
                     <th>Total</th> 
                   </tr>
                            </thead>
                                <tbody>

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
            $('#dataTable th:nth-child(12),#dataTable td:nth-child(12)').remove();


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


    // $('#inv_date').keyup(function(){
    //   document.getElementById("select").selectedIndex = 0;
    // })

    $('#search_inventory').click(function(){

      $cat = $('#category').val();
      $mn = $('#month').val();
      $yr = $('#year').val();
      
      if ($cat == null || $mn == null || $yr == null) {
        alert('Please select date !');
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
            document.getElementById("category").selectedIndex = 0;
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
    $('#dataTable th:nth-child(12),#dataTable td:nth-child(12)').remove();
    var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
    var textRange; var j=0;
    tab = document.getElementById('dataTable'); // id of table
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