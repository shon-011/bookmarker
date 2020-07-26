<?php
session_start();
include("../funcs.php");
sic();

$unique_user_id = $_SESSION["unique_user_id"];
$newuserName    = $_POST["newuserName"];
$password       = $_POST["password"];
$newpassword    = $_POST["newpassword"];


//DB接続
$pdo = db_con();


  //２．データ登録SQL作成(book_users)
  $stmt = $pdo->prepare("SELECT * FROM book_users WHERE unique_user_id = $unique_user_id");
  $status = $stmt->execute();

  if($status==false) {
    $error = $stmt->errorInfo();
    exit("SQLError:".$error[2]);
    echo $error[2];
    }else{
        $res = $stmt->fetch();
        $oldpassword= $res["password"];

        if($oldpassword == $password ){
                //２．データ登録SQL作成
            $update= $pdo->prepare("UPDATE book_users SET userName=:newuserName, password=:newpassword WHERE  unique_user_id = $unique_user_id");

            $update->bindValue(':newuserName',$newuserName,PDO::PARAM_STR);
            $update->bindValue(':newpassword',$newpassword,PDO::PARAM_STR);
            $status = $update->execute();


            if($status==false) {
                //execute（SQL実行時にエラーがある場合）
            $error = $update->errorInfo();
            exit("SQLError:".$error[2]);
            echo $error[2];

            }else{
            header("Location: ../bookmark/select.php");
            }
        }else{
            echo "passwordが違います。";
            echo '<a href="userset.php">戻る</a>';
            exit();
            
        }
    }


  



?>