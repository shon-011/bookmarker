<?php
session_start();
include("../funcs.php");
sic();
$unique_user_id = $_SESSION["unique_user_id"];
$userName =  $_SESSION["userName"];

//DB接続
$pdo = db_con();

  //２．データ登録SQL作成(book_mark)
$stmt = $pdo->prepare("SELECT * FROM book_users WHERE unique_user_id = $unique_user_id ");
$status = $stmt->execute();



//３．データ表示
$view="";
if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);
}else{
    $res= $stmt->fetch();
    $password = $res["password"];
    

}



?>




<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ユーザー設定</title>
</head>
<body>
    <form action="userupdate.php" method="POST">
ユーザー：<input type="text" name="newuserName" value="<?=$userName?>">
現在のパスワード：<input type="password" name="password">
新しいパスワード：<input type="password" name="newpassword">
<input type="submit" value="更新">
</form>
<a href="../bookmark/select.php">HOMEに戻る</a>

</body>
</html>