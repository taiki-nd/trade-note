$(function(){
  const imgs = ['graph.png', 'pf.png', 'result.png'];  // 画像ファイル名
  let index = 0;  // インデックス番号

  // 初期画像の表示
  $('.lp_graph_img').attr('src', '/assets/' + imgs[index]);
  
  // ボタンクリックイベント
  $('#changeBtn').click(function(){
    // 最後の画像判定
    if(index == imgs.length - 1){
      index = 0;
    }else{
      index++;
    }
    // 画像の切り替え
    $('.lp_graph_img').attr('src', '/assets/' + imgs[index]);
  });
});