<?php
session_start();
include("../funcs.php");
sic();

$id = $_GET["id"];
$ISBN = $_GET["ISBN"];


//DB接続
$pdo = db_con();

  //２．データ登録SQL作成()
$delete= $pdo->prepare("DELETE FROM book_mark WHERE  id=:id");
$delete->bindValue(':id',$id,PDO::PARAM_INT);
$status = $delete->execute();


if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);

}else{
header("Location: select.php");
 

}
?>