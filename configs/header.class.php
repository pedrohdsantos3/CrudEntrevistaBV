<?php


		class Redirect{

			public function PegaServer(){
				$urlbase = "http://localhost/testeBevicred/admin/";

				return $urlbase;
			}

			public function PegaSite(){
				$urlbase = "http://localhost/testeBevicred/admin/";

				return $urlbase;
			}

			public function PegaSaida(){
				$urlbase = "http://localhost/testeBevicred/login/";


				return $urlbase;
			}

			public function site($pag){

					$site = $this->PegaSite();

				header("Location: ".$site.$pag);

			}

			public function Directout($pag){

					$site = $this->PegaSaida();
					//echo $site;exit;

				header("Location: ".$site.$pag);

			}

			public function Redir($pag){
				$site = $this->PegaServer();
				
				header("Location: ".$site.$pag);

			}


		}

?>
