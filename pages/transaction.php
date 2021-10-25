<?php
include'../includes/connection.php';
include'../includes/sidebar.php';
  $query = 'SELECT ID, t.TYPE
            FROM users u
            JOIN type t ON t.TYPE_ID=u.TYPE_ID WHERE ID = '.$_SESSION['MEMBER_ID'].' ';
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

              <h4 style="color: green;">Transaction</h4>

               <div class="form-group" style="display: flex; flex-direction: row;">
                <label>Search:</label>
                  <select id="sort_by" onclick="search_sales()" class='form-control' style="width: 100px;">
                    <option selected disabled value="0"> select </option>
                    <option value="1">by day</option>
                    <option value="2">by month</option>
                  </select>
                  &nbsp; &nbsp;
                  <input type="text"  placeholder="day" id="sales_day" class="form-control" style=" display: none; width: 100px; ">
                  &nbsp;&nbsp;
                  <select id="sales_month" class='form-control' style=" display: none; width: 100px;">
                    <option selected disabled value="0"> month </option>
                    <option value="01">January</option>
                    <option value="02">February</option>
                    <option value="03">March</option>
                    <option value="04">April</option>
                    <option value="05">May</option>
                    <option value="06">June</option>
                    <option value="07">July</option>
                    <option value="08">August</option>
                    <option value="09">September</option>
                    <option value="10">October</option>
                    <option value="11">November</option>
                    <option value="12">December</option>

                  </select>
                  &nbsp;&nbsp;
                  <select id="sales_year" class='form-control' name='year' style="width: 100px;">
                    <option disabled selected hidden>Year</option>
                    <option value="2020"> 2020 </option>
                    <option value="2021"> 2021 </option>
                    <option value="2022"> 2022 </option>
                    <option value="2023"> 2023 </option>
                  </select>
                  &nbsp;&nbsp;
                <style type="text/css">
                  button:hover{
                    cursor: pointer;
                  }
                </style>
                
                <button style=" background: green; border: green; color: white; padding: 3px; border-radius: 6px;" onclick="search_sales_report()"> View Report </button> &nbsp;&nbsp;
                <button style=" background: green; border: green; color: white; padding: 3px; border-radius: 6px;" onclick="fnExcelReport()"> Download </button>


               </div>
               <input type="text" onkeypress="return isNumberKey(event)" name="search_or" id="search_or" autofocus="" placeholder="Search OR" onkeyup="search_or()" style="float: right; margin-top: -55px; font-style: italic;">


             
            </div>
            <div class="card-body" id="show_sort_results">
              <div class="table-responsive">
                
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <th width="10%">SI/OR Number</th>
                     <th>Customer</th>
                     <th width="13%"># of Items</th>
                     <th width="11%">Action</th>
                   </tr>
               </thead>
          <tbody>

<?php                  
    $query = 'SELECT *, FIRST_NAME, LAST_NAME
              FROM transaction T
              JOIN customer C ON T.`CUST_ID`=C.`CUST_ID`
              ORDER BY TRANS_ID DESC LIMIT 10';
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {
                                 
                echo '<tr>';
                echo '<td>'. $row['OR_NUMBER'].'</td>';
                echo '<td>'. $row['FIRST_NAME'].' '. $row['LAST_NAME'].'</td>';
                echo '<td>'. $row['NUMOFITEMS'].'</td>';
                      echo '<td align="right">
                              <a type="button" class="btn btn-primary bg-gradient-primary" href="trans_view.php?action=edit & id='.$row['TRANS_ID'] . '"><i class="fas fa-fw fa-th-list"></i> View</a>
                          </div> </td>';
                echo '</tr> ';
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


<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script type="text/javascript">

  $sales_m = $('#sales_month').val();
  $sales_d = $('#sales_day').val();
  $sales_y = $('#sales_year').val();

  function search_sales(){
    $val_sort = $('#sort_by').val();
    if ($val_sort == '1') {
      $('#sales_day').show();
      $('#sales_month').show();
    }else if($val_sort == '2'){
      $('#sales_month').show();
      $('#sales_day').hide();
    }

  }

  function search_or(){
    $or_no = $('#search_or').val();
    $dats = {
      "search_or": $or_no
    };
    $.ajax({
      url: "search_or.php",
      type: "POST",
      data: $dats,
      success: function(resp){
          $('#show_sort_results').html(resp);
                myApp.printTable();
      }
    })



  }


  // var myApp = new function () {
  //       this.printTable = function () {

  //           var tab = document.getElementById('dataTable');
  //           var header = document.getElementById('header');
  //           var ttl_stock = document.getElementById('total_stocks');
  //           // $('#dataTable th:nth-child(14),#dataTable td:nth-child(14)').remove();


  //           var style = "<style>";
  //               style = style + "label {width: 100%;font: 17px Calibri;}";
  //               style = style + "table {width: 100%;font: 17px Calibri;}";
  //               style = style + "table, th, td {border: solid 1px #DDD; border-collapse: collapse;";
  //               style = style + "padding: 2px 3px;text-align: center;}";
  //               style = style + "</style>";

  //           var win = window.open('', '', 'height=700,width=700');
  //           win.document.write(style);
  //           win.document.write(header.innerHTML);          //  add the style.
  //           win.document.write(tab.outerHTML);
  //           win.document.write(ttl_stock.innerHTML);
  //           win.document.close();
  //           win.print();
  //       }
  //   }

    function fnExcelReport(){
    
    var tab_text="<table border='2px'><tr bgcolor='#87AFC6'>";
    var textRange; var j=0;
    var header = document.getElementById('header');
    var tab = document.getElementById('dataTable'); // id of table
    $('#dataTable th:nth-child(9),#dataTable td:nth-child(9)').remove();
    $d = "$sales_m $sales_d $sales_y";
    

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
        sa=txtArea1.document.execCommand("SaveAs",true,"$d.xlsx");
    }  
    else                 //other browser not tested on IE 11
        sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  

    return (sa);

}

  function search_sales_report(){

      $mn = $('#sales_month').val();
      $yr = $('#sales_year').val();
      $dy = $('#sales_day').val();
      
      if ($mn == null || $yr == null) {
        alert('Please select date!');
      }else{

        $data = {
          "month": $mn,
          "year": $yr,
          "day": $dy
        };
        $sort = $('#sort_by').val();
        if ($sort == '1') {

          $.ajax({
            url: "search_sales_day.php",
            type: "POST",
            data: $data,
            success: function(response){
              // document.getElementById("month").selectedIndex = 0;
              // document.getElementById("year").selectedIndex = 0;
              // $("#sales_day").val("");
              // document.getElementById("sort_by").selectedIndex = 0;
              
              $('#show_sort_results').html(response);
                myApp.printTable();
                // fnExcelReport();
                //alert(response);
            }
          })


        }else if($sort == '2'){
          $.ajax({
            url: "search_sales_month.php",
            type: "POST",
            data: $data,
            success: function(response){
              $('#show_sort_results').html(response);
              myApp.printTable();
              // fnExcelReport();
              //alert(response);
            }
          })
        }


        
      

      }


    }




</script>