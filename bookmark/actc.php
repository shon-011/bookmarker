<?php
session_start();
include("../funcs.php");
sic();

$id = $_GET["id"];



//DB接続
$pdo = db_con();

  //２．データ登録SQL作成()
$delete= $pdo->prepare("UPDATE  book_users  SET act = 0 WHERE  unique_user_id=:id");
$delete->bindValue(':id',$id,PDO::PARAM_INT);
$status = $delete->execute();


if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("SQLError:".$error[2]);

}else{
header("Location: act.php");
}
?>