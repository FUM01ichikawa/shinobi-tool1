function execCopy(string){

  // 空div 生成
  var tmp = document.createElement("div");
  // 選択用のタグ生成
  var pre = document.createElement('pre');

  // 親要素のCSSで user-select: none だとコピーできないので書き換える
  pre.style.webkitUserSelect = 'auto';
  pre.style.userSelect = 'auto';

  tmp.appendChild(pre).textContent = string;


  // body に追加
  document.body.appendChild(tmp);
  // 要素を選択
  document.getSelection().selectAllChildren(tmp);

  // クリップボードにコピー
  var result = document.execCommand("copy");

  // 要素削除
  document.body.removeChild(tmp);

  return result;
}


var result_text = document.getElementById('result_text').textContent;
var text_copy = document.getElementById('text_copy');
console.log(text_copy);

text_copy.onclick = function(){
  if(execCopy(result_text)){
    alert('作成した暗号をコピーしました');
  }
  else {
    alert('このブラウザでは対応していません');
  }
};
