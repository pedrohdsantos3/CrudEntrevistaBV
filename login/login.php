<?php
        if(isset($_POST["entrar"])){


          include("../configs/header.class.php");
          $redir = new Redirect();


                   include("classes/login.class.php");
                   $login = new Login();

                   $login->carregaPost();
                  //echo $user.$senha;exit;
                   $con = $login->conectar($user, $senha);


                   if($con > 0){
                       session_start();
                       $_SESSION["user"] = $user;
                       $_SESSION["senha"] = md5($senha);
                       //echo "oi";exit;
                       $redir->Redir("index.php");

                   }else {
                        $redir->Directout("index.php?e=erro");

                  }






        }
?>
