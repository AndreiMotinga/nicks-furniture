// animate shit
$(function(){
  new WOW().init();

  $(".scroll").click(function(event){
    event.preventDefault();
    $('html,body').animate({
      scrollTop: $(this.hash).offset().top
    }, 1000);
  });
});
