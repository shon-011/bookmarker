<?php 
session_start();
include("../funcs.php");
// sic();
$unique_user_id = $_SESSION["unique_user_id"];
$userName =  $_SESSION["userName"];

//DB接続
$pdo = db_con();

  //２．データ登録SQL作成(book_mark)
$stmt = $pdo->prepare("SELECT * FROM book_users WHERE act = 0 AND unique_user_id = $unique_user_id");
$status = $stmt->execute();



$view="";
    //３．データ表示
    if($status==false) {
        $error = $stmt->errorInfo();
        exit("SQLError:".$error[2]);
    }else{ 

            $stmt2 = $pdo->prepare("SELECT * FROM book_users");
            $status2 = $stmt2->execute();
            while( $userInfo = $stmt2->fetch(PDO::FETCH_ASSOC)){ 
                $unique_user_id2 = $userInfo["unique_user_id"];
                $userName = $userInfo["userName"];
                $userID = $userInfo["userID"];
                $act = $userInfo["act"];

                if($act == 1 ){
                    $view .= <<<EOT
                                <div>
                                <p>userName : {$userName}/userID : {$userID}/<a href="actc.php?id={$unique_user_id2}">管理者に変更する</a></p>
                                </div>
                            EOT;
                }else{
                    $view .= <<<EOT
                            <div>
                            <p>{$userName}/{$userID}/ 管理者</p>
                            </div>
                            EOT;
                }
            } 
        }





?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>管理者ページ</title>
</head>
<body>
<?=$view?>
    
</body>
</html>