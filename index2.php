<?php
//1.  DB接続します xxxにDB名を入れます
try {
$pdo = new PDO('mysql:dbname=kadai_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//２．データ登録SQL作成
//作ったテーブル名を書く場所  xxxにテーブル名を入れます
$stmt = $pdo->prepare("SELECT * FROM kadai_table where id = (select max(id) from kadai_table)");
$status = $stmt->execute();

//３．データ表示
// $view="";
$event="";
$organizer="";
$memotext="";
$date1name="";
$date2name="";
$date3name="";
if($status==false){
//   execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //Selectデータの数だけ自動でループしてくれる $resultの中に「カラム名」が入ってくるのでそれを表示させる例
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    // $view .= "<p>";
    // $view .= $result["id"].":".$result["eventname"].":".$result["organizername"].":".$result["memo"].":".$result["date1"].":".$result["date2"].":".$result["date3"].":".$result["Indate"];
    // $view .= "</p>";
    $event .= "<p>";
    $event .= $result["eventname"];
    $event .= "</p>";
    $organizer .= "<p>";
    $organizer .= $result["organizername"];
    $organizer .= "</p>";
    $memotext .= "<p>";
    $memotext .= $result["memo"];
    $memotext .= "</p>";
    $date1name .= "<p>";
    $date1name .= $result["date1"];
    $date1name .= "</p>";
    $date2name .= "<p>";
    $date2name .= $result["date2"];
    $date2name .= "</p>";
    $date3name .= "<p>";
    $date3name .= $result["date3"];
    $date3name .= "</p>";
  }
}

?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>日程調整➁</title>
  <!-- <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>div{padding: 10px;font-size:16px;}</style> -->
   <link rel="stylesheet" href="css/style.css">
</head>
<body>

<!-- Head[Start] -->
<!-- <header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
    <div class="navbar-header"><a class="navbar-brand" href="select.php">データ一覧</a></div>
    </div>
  </nav>
</header> -->
<!-- Head[End] -->

<!-- Main[Start] -->
<!-- ここからinsert.phpにデータを送ります -->

<form method="post" action="insert2.php">
  <div class="jumbotron2">
   <fieldset>
    <legend>日程調整</legend>
     <label>イベント名：<?= $event ?></label><br>
     <label>主催者名：<?= $organizer ?></label><br>
     <label><?= $memotext ?></label><br>
     <label>入力者名：<input type="text" name="username"></label><br>
     <label>候補日➀：<?= $date1name ?><input type="text" name="date1text" placeholder=" 状況を入力"></label><br>
     <label>候補日➁：<?= $date2name ?><input type="text" name="date2text" placeholder=" 状況を入力"></label><br>
     <label>候補日➂：<?= $date3name ?><input type="text" name="date3text" placeholder=" 状況を入力"></label><br>
      <label><textArea name="comment" rows="4" cols="40" placeholder="要望があればご記入下さい！"></textArea></label><br>
     <input type="submit" id=send value="送信">
      <div id="btn3"><img src="img/btn3.png" alt=""></div>
    </fieldset>
  </div>
</form>
<!-- Main[End] -->
<!-- JQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
    $("#btn3").on("click", function () {
        window.location.href = "window.php";
    });
</script>


</body>
</html>
