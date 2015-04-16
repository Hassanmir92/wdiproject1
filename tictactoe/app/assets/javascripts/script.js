 $(function() {
  
  $("h1.profile_image_detail img").hover(
    function() {
      $(this).animate({height: '+=5%', width: '+=5%'});
    },
    function() { 
      $(this).animate({height: '200', width: '200'});
    }
  );

  $("h1.street_fighter img").hover(
    function() {
      $(this).animate({height: '341', width: '535'});
    },
    function() { 
      $(this).animate({height: '310', width: '487'});
    }
  );

}); 
