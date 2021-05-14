//NAV BAR 
navPos=$(".a_petitheader").offset().top;
$(window).scroll(function(){
    var sticky = $('.a_petitheader'),
        scroll = $(window).scrollTop();
    
    if (scroll >= navPos) sticky.addClass('fixed');
    else sticky.removeClass('fixed');
})


//BOUTON 
// $(function(){
//   $.fn.scrollToTop=function(options){
//     if(options.speed){var  speed=options.speed;}else{var speed="slow";}
//     if(options.ease){var  ease=options.ease;}else{var ease="jswing";}
//     if(options.start){var  start=options.start;}else{var start="0";}
//     var  scrollDiv=$(this);$(this).hide().removeAttr("href");
//     if($(window).scrollTop()>start){
//       $(this).fadeIn("slow");}
//       $(window).scroll(function(){
//         if($(window).scrollTop()>start){
//           $(scrollDiv).fadeIn("slow");
//         } else{
//           $(scrollDiv).fadeOut("slow");
//         }
//      });
//      $(this).click(function(event){
//        $("html,  body").animate({scrollTop:"0px"},speed,ease);
//    });
//   }
// });

// $(document).ready(function(){
//   $(".butontop").scrollToTop({
//     speed:1800,
//     ease:"easeOutBounce",
//     start:50});
// });


$(".butontop").click(function() {
  $('html, body').animate({
        scrollTop: $("#top").offset().top
    }, 1000);
});