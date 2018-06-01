<?php

        class Login{


            public function conectar($usr, $pass){
              include("../configs/conexao.class.php");

                $pass = md5($pass);

                $login = $pdo->prepare("SELECT * FROM usuarios WHERE usu_email = :usr AND usu_senha = :pass ");
                //print_r($login);exit;
                $login->execute();

                //print_r($login);exit;
                if($login->rowCount()>0)
                    return TRUE;
                else
                    return FALSE;


            }

            public function carregaPost(){

                    $__campos = array("user", "senha");
                    
                    foreach($__campos as $c){
                        $_v_=isset($_POST[$c])?$_POST[$c]:"";
                        
                        if(is_string($_v_))
                            $_v_=trim($_v_);
                        $GLOBALS[$c]=$_v_;
                    }
                    unset($_v_);
            }




        }

?>
