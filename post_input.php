<?php



// DB接続情報
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

$sql = 'SELECT * FROM post_table ORDER BY id desc';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

if($status==false){
    $error = $stmt->errorInfo();
    exit("sqlError:".$error[2]);
  }else{
    // dbからとってきたものを変数に入れる
    $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
    $output = "";
    foreach ($result as $record) {
      $output .= "<tr>";
      $output .= "<h2>{$record["userName"]}</h2>";
      $output .= "<p>{$record["text"]}</p>";
      $output .= "<p>{$record["created_at"]}</p>";
      $output .= "</tr>";
  }
}


?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="./input.css">
  <title>Twitter?</title>
</head>

<body>
  <header>
    <div class="header_logo">
      <img src="./Twitter-Logo.png" alt="">
    </div>
    <div class="header_link">
      <a href="#">Home</a><span> |</span>
      <a href="#">Your profile</a><span> |</span>
      <a href="#">Message</a><span> |</span>
      <a href="#">Setting</a><span> |</span>
      <a href="#">Help</a><span> |</span>
      <a href="#">Sign out</a><span>　</span>
    </div>
  </header>
  <main>
    <!-- <div class="user_info">
      <div class="user_icon">
        <img src="./IMG-0265.jpg" alt="">
      </div>
      <div class="user_name"><p>はっしー</p></div>
    </div> -->
  </main>
  <form  class="form_container"action="./post_create.php" method="POST">
    <p>いまどうしてる？</p>
    <div class="input_box">
      <ul>
        <li>
          <div class="form_box">
            <p>ユーザーネーム</p><input type="text" name="userName">
          </div>
        </li>
        <li>
          <div class="form_box">
            <p>テキスト</p><textarea type="text" name="text"></textarea>
          </div>
        </li>
      </ul>
    </div>
    <div class="btn">
      <button>送信</button>
    </div>
  </form>
  <table>
      <!-- <thead>
        <tr>
          <th>テキスト</th>
          <th>ユーザーネーム</th>
        </tr>
      </thead> -->
      <tbody>
        <!-- ここに<tr><td>deadline</td><td>todo</td><tr>の形でデータが入る -->
        <?= $output ?>
      </tbody>
    </table>

</body>

</html>