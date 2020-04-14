<?php
    // db info
    $dbname = "sample";
    $dbhost = "db";
    $port = "3306";
    $dsn = "mysql:dbname={$dbname};host={$dbhost};port={$port};charset=utf8mb4";
    $user = "root";
    $pass = "password";

    // csv info
    $file_name = "users.csv";
    $title = ["id", "名前", "メールアドレス", "電話番号"];
    $sql = "SELECT id, uname, email, tel FROM users";

    // db connection
    try{
        $db = new PDO($dsn, $user, $pass);
    }catch(PDOException $e){
        exit("connection failed:".$e->getMessage());
    }

    // csv export
    if(touch($file_name)){
        $file = new SplFileObject($file_name, "w");
        $file->fputcsv(mb_convert_encoding($title,"SJIS", "UTF-8"));
        $stmt = $db->query($sql);
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            $file->fputcsv(mb_convert_encoding($row,"SJIS", "UTF-8"));
        }
        $db = null;
    }
    

    header('Content-Type: application/force-download');
    header('Content-Length: '.filesize($file_name));
    header('Content-disposition: attachment; filename="'.$file_name.'"');
    readfile($file_name);
