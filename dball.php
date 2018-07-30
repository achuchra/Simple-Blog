<?php

	class All extends DbConnect {
		
			public function getAll(){
				$pdo = "SELECT * FROM wpisy ORDER BY data DESC";
				$result = $this->connect()->query($pdo);
				$numRows = $result->rowCount();
				
				if($numRows>0){
					while($row = $result->fetch()){
						$data[] = $row;
				}
				return $data;
			}
			}
			
			public function showAll(){
				$datas = $this->getAll();
				foreach ($datas as $data){
					echo "<table><thead><tr><th class=\"thtytul\">{$data['tytul']}</th><th class=\"thdata\">Dodano: {$data['data']}</th></tr></thead>
								 <tbody><tr><td colspan=\"2\">{$data['tresc']}</td></tr></tbody></table>".'<br><br>';
							
				}
			}
			
	}
	
	class Polska extends DbConnect {
		
			public function getPolska(){
				$pdo = "SELECT * FROM wpisy WHERE kategoria='Polska' ORDER BY data DESC";
				$result = $this->connect()->query($pdo);
				$numRows = $result->rowCount();
				
				if($numRows>0){
					while($row = $result->fetch()){
						$data[] = $row;
				}
				return $data;
			}}
			
			public function showPolska(){
				$datas = $this->getPolska();
					foreach ($datas as $data){
					echo "<table><thead><tr><th class=\"thtytul\">{$data['tytul']}</th><th class=\"thdata\">Dodano: {$data['data']}</th></tr></thead>
								 <tbody><tr><td colspan=\"2\">{$data['tresc']}</td></tr></tbody></table>".'<br><br>';}
				
			}
			
	
	}
	
	class Europa extends DbConnect {
		
			public function getEuropa(){
				$pdo = "SELECT * FROM wpisy WHERE kategoria ='Europa' ORDER BY data DESC";
				$result = $this->connect()->query($pdo);
				$numRows = $result->rowCount();
				
				if($numRows>0){
					while($row = $result->fetch()){
						$data[] = $row;
				}
				return $data;
			}
			}
			
			public function showEuropa(){
				$datas = $this->getEuropa();
				foreach ($datas as $data){
					echo "<table><thead><tr><th class=\"thtytul\">{$data['tytul']}</th><th class=\"thdata\">Dodano: {$data['data']}</th></tr></thead>
								 <tbody><tr><td colspan=\"2\">{$data['tresc']}</td></tr></tbody></table>".'<br><br>';}
				
	}}
			
	
	
	
	class Azja extends DbConnect {
		
			public function getAzja(){
				$pdo = "SELECT * FROM wpisy WHERE kategoria = 'Azja' ORDER BY data DESC";
				$result = $this->connect()->query($pdo);
				$numRows = $result->rowCount();
				
				if($numRows>0){
					while($row = $result->fetch()){
						$data[] = $row;
				}
				return $data;
			}
			}
			
			public function showAzja(){
				$datas = $this->getAzja();
					foreach ($datas as $data){
					echo "<table><thead><tr><th class=\"thtytul\">{$data['tytul']}</th><th class=\"thdata\">Dodano: {$data['data']}</th></tr></thead>
								 <tbody><tr><td colspan=\"2\">{$data['tresc']}</td></tr></tbody></table>".'<br><br>'; }
					
				
			}
			
	
	}

