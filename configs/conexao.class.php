<?php

try{

$pdo = new PDO('mysql:host=localhost;dbname=agora076_bevicred','agora076_bvuser','s91635304,.');
} catch (PDOException $e) {

    echo $e->getMessage();
    exit;
  }

?>
