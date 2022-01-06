$(function(){
  // 初期画像の表示
  let index = 0;
  $('.lp_graph_img').eq(index).addClass('current-img');
  
  setInterval(function(){
    // 非表示
    $('.lp_graph_img').eq(index).removeClass('current-img');
    // 画像の最後判定
    if(index == $('.lp_graph_img').length - 1){
      index = 0;
    }else{
      index++;
    }
    // 表示
    $('.lp_graph_img').eq(index).addClass('current-img');
  }, 2000);
});