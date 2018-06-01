<?php

try{

$pdo = new PDO('mysql:host=localhost;dbname=testebevicred','dev','8535');
} catch (PDOException $e) {

    echo $e->getMessage();
    exit;
  }

?>
