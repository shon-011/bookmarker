<?php

//ログイン認証
  function sic (){
      if(!isset($_SESSION["ssid"]) || $_SESSION["ssid"] != session_id()){
          echo "SIGN IN ERORR!";
         
          exit();
        };
  };


//DB接続
  function db_con(){
  try {
    // $pdo = new PDO('mysql:dbname=book;charset=utf8;host=localhost','root','root');
    $pdo = new PDO('mysql:dbname=hapus_gs_book;charset=utf8;host=mysql2011.db.sakura.ne.jp', 'hapus', 'Shona5422' );
  } catch (PDOException $e) {
    exit('DBConnectError:'.$e->getMessage());
  }
    return $pdo;
  }
?>