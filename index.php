<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
  <title>日程調整➀</title>
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
<form method="post" action="insert.php">
  <div class="jumbotron">
   <fieldset>
    <legend>日程調整</legend>
     <label>イベント名：<input type="text" name="eventname"></label><br>
     <label>主催者名：<input type="text" name="organizername"></label><br>
     <label><textArea name="memo" rows="4" cols="40" placeholder=" 詳しい説明をご記入下さい！"></textArea></label><br>
     <label>候補日➀：<input type="text" name="date1" placeholder=" YYYY.MM.DD "></label><br>
     <label>候補日➁：<input type="text" name="date2" placeholder=" YYYY.MM.DD "></label><br>
     <label>候補日➂：<input type="text" name="date3" placeholder=" YYYY.MM.DD "></label><br>
     <input type="submit" id=send value="send">
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
