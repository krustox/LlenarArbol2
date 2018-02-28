
jQuery(function() {
    $('.holding').change(function() {
    var holding;
    var url;
    url = window.location.href;
    holding = $('.holding :selected').val();
    console.log(holding);
    $('.empresa').empty();
    if(url.indexOf("edit") !== -1){
      $('.empresa').load("../get_enterprises.html?holding_id="+$('.holding :selected').val());
    }else{
      $('.empresa').load("get_enterprises.html?holding_id="+$('.holding :selected').val());
    }
  });
});
