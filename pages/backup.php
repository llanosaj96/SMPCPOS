<?php
include'../includes/connection.php';
include'../includes/sidebar.php';

?>         
<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body>

  <div style="padding: 2%; display: flex; flex-direction: row;">
    <div class="form=group">
      <button id="btnExport" class="btn btn-primary bg-gradient-primary" onclick="download()" style=" background: green; border: green; margin: 10px" /> Backup and download database </button>
    </div>
    <div class="form=group">
       <button id="btnImport" class="btn btn-primary bg-gradient-primary" style=" background: green; border: green; margin: 10px;" /> Import database </button>
    </div>

  </div>
              <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h4 style="color: green;">Recent Downloads</h4>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                
<!--                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0"> 
               <thead>
                   <tr>
                     <th>Name</th>
                     <th>Date</th>
                     
                   </tr>
               </thead>
          <tbody> -->

<?php                  
    $query = 'SELECT * FROM database_download order by REC_NO DESC ';
        $result = mysqli_query($db, $query) or die (mysqli_error($db));
      
            while ($row = mysqli_fetch_assoc($result)) {

                $download_date = $row['DOWNLOAD_DATE'];
                $download_name = $row['DOWNLOAD_NAME'];
                 date_default_timezone_set('Asia/Manila');
                // $form = date('l F j, Y | g:ia', strtotime($download_date));

                                 
                echo "<div style= 'margin: 5px; text-decoration: underline;'>";
                echo "$download_name";
                echo " | ";
                echo "$download_date";
                echo "</div>";
                        }
?> 
                                    
<!--                                 </tbody>
                            </table> -->
                        </div>
                    </div>
                  </div>
</body>
</html>
<script type="text/javascript">
  function download(){
    var ans = confirm('Are you sure to backup and download database ?');
    if (ans == true) {
      window.location = 'back_database.php';
      setTimeout(function(){ location.reload(); }, 1000);
    }else{

    }
  }


</script>

<?php
include'../includes/footer.php';
?>
