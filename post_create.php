<?php
// var_dump($_POST);
// exit;

if(
  !isset($_POST["userName"]) ||$_POST["userName"]=="" ||
  !isset($_POST["text"]) ||$_POST["text"]==""
){
  exit('paramError');
}

$userName = $_POST['userName'];
$text = $_POST['text'];

// DB接続情報
// dbname以外は毎回一緒！
$dbn = 'mysql:dbname=gsacf_l05_06;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';



// DB接続
try {
  $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
  echo json_encode(["db error" => "{$e->getMessage()}"]);
  exit();
}

// SQL作成＆実行
$sql = 'INSERT INTO
            post_table(id, userName, text, created_at, updated_at)
            VALUES(NULL, :userName, :text, sysdate(), sysdate())
        ';

// 変数をバインド変数に格納
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':userName', $userName, PDO::PARAM_STR);
$stmt->bindValue(':text', $text, PDO::PARAM_STR);
$status = $stmt->execute();

// 失敗時にエラーを出力し、成功時は登録画面に戻る
if ($status==false) {
$error = $stmt->errorInfo();
// データ登録失敗次にエラーを表示
exit('sqlError:'.$error[2]);
} else {
// 登録ページへ移動
header('Location:post_input.php');
}