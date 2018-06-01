<?php
	Class Verificalogin{


		public function validaLogin($usuario, $senha){

			$usr = $usuario;
			$sn = md5($senha);

			include("../configs/conexao.class.php");
			
			$login = $pdo->prepare("SELECT * FROM usuarios WHERE usu_nome = '$usr' AND usu_senha = '$sn' ");
			print_r($login);exit;
			$login->execute();
			if($login ->rowCount()){
				return true;
			}else
				return false;
		}
	}
?>
