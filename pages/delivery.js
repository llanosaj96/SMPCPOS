  function savedd(){
    if (confirm("Please click yes to continue.")) {
          var ddate = $('#delivery_date').val();
          var d_data = {
            "delivery_date": ddate
          };
          $.ajax({
            url: "delivery_save.php",
            type: 'POST',
            data: d_data,
            success: function(reply){
              
              alert('Items out for delivery!');
              window.location = "delivery.php";
            }
          })

    }else{
      return false;
    }
  }


  $('#delivery_info').hide();
  function get_delivery(){
    $dd1 = $('#delivery_date').val();
    $data1 = {
      "delivery_date": $dd1
    };

    $.ajax({
      url: "get_delivery_info.php",
      type: "POST",
      data: $data1,
      success: function(response){
        $('#delivery_info').html(response);
        $('#delivery_info').fadeIn();
       
      }
    })
  }

  $('.checkAll').click(function(){
      if (this.checked) {
        $(".add_delivery").each(function(){
          this.checked = true;
        })
      }else{
        $(".add_delivery").each(function(){
          this.checked = false;
        })
      }
    })



  function delete_delivery(){
    if (confirm("Are you sure to delete items from list?")) {
      var id = [];
      $(':checkbox:checked').each(function(i){
        id[i] = $(this).val();

        if(id.length == ''){
          alert("Please select atleast one checkbox");
        }else{

          $.ajax({
            url: "delete_delivery.php",
            method: 'POST',
            data: {id:id},
            success: function(reply1){
              // for (var i=0; i<id.length; i++ ) {
              //   $('tr#'+id[i]+'').css('background-color', '#ccc');
              //   $('tr#'+id[i]+'').fadeOut('slow');
              // }
              window.location = "delivery.php";
            }
          })
        }
      });
    }else{
      return false;
    }
  }






  

  // function return_delivery(){
  //   $dd = $('#return_date').val();
  //   $data = {
  //     "return_date": $dd
  //   };

  //   $.ajax({
  //     url: "return_items.php",
  //     type: "POST",
  //     data: $data,
  //     success: function(response1){
  //        $('#return_info').html(response1);
  //        $('#return_info').fadeIn();
  //     }
  //   })
  // }

  


  $(document).on('click','a[data-role=return]',function(){
        var rec  = $(this).data('id');
        var dat = {
          "rec_no": rec
        };
        $.ajax({
          url:"return_items_form.php",
          method: "POST",
          data: dat,
          success: function(response){
            $('.show_data').html(response);
          }
        })
});