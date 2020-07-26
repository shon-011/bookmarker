<?php
include("funcs.php");

//DB接続
$pdo = db_con();

  //２．データ登録SQL作成(book_mark)
$stmt = $pdo->prepare("SELECT * FROM book_number");
$status = $stmt->execute();



//３．データ表示
$view="";
if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);

}else{

  while( $res = $stmt->fetch(PDO::FETCH_ASSOC)){ 
    $bookName   = $res["bookName"];
    $imgURL     = $res["imgURL"];


    $view .= <<< EOT
        <div class="card">
        <h4>{$bookName}</h4>
        <img src="{$imgURL}" alt="">
        </div>
    
        
    EOT;
    
  }
}
?>






<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- Google icon font -->
     <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="../css/syle.css">
    <title>ブックマーク課題</title>
</head>
<body>
<nav class="teal lighten-3 z-depth-4">
<h1>ブックマーク課題</h1> 
</nav>

<div class="row ">
  <div class="col s2　grey">
      <div class="wrapper">
          <ul>
            <li><a href="users/signin.php">ログイン</a></li>
            <li><a href="bookmark/serch.php">本  検索</a></li>
            <li><a href="users/signup.php">アカウント作成</a></li><br>
          </ul>
      </div>
  </div>

    <div class="col s10 z-depth-1">
        <h3>こんな本がブックマークされています！</h3>　
        <div class="booknum"><?=$view?></div>
    </div>
</div>




<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>