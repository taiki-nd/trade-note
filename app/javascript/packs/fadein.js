$(function(){

  $(window).scroll(function(){
    $('.fadeout').each(function(){
      $(this).css('background', '-webkit-linear-gradient(45deg, #fed475 0%,#e53d5d 50%,#c23186 70%,#9c38bb 100%)');
      $(this).css('-webkit-background-clip', 'text');
      $(this).css('-webkit-text-fill-color', 'transparent');
      $(this).css('opacity','0');
      $(this).css('transform', 'translateX(100px)');
    })
  })

  if (window.matchMedia( '(min-width: 600px)' ).matches){
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.faderight').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.fadeleft').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }else{
    $(window).scroll(function(){
      $('.fadein').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 100){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.faderight').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
      $('.fadeleft').each(function(){
        let scroll = $(window).scrollTop();
        let target = $(this).offset().top;
        let windowHeight = $(window).height();
        if(scroll > target - windowHeight + 200){
          $(this).css('opacity','1');
          $(this).css('transform', 'translateY(0)');
        }
      });
    });
  }

});
