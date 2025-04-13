object pepita {
	var energia = 100
	
	method comer(comida) {
		energia = energia + comida.energiaQueAporta()
	}
	
	method energia() {
		return energia
	}
	method volar(distancia) {
		energia = 
				if (self.puedeVolar(distancia)) { 
					self.energiaQueConsumeVolar(distancia) 
				} else self.errorAlVolar()
	}
	method energiaQueConsumeVolar(distancia){
		return energia - 10 - distancia
	}

	method puedeVolar(distancia) {
		return self.energiaQueConsumeVolar(distancia) > 0
	}

	method errorAlVolar(){
		assert.throwsException({"Pepita no tiene suficiente energia"})
	}
}

object alpiste {
	method energiaQueAporta() {
		return 20
	}
}

object manzana {
	var madurez = 1
	const base = 5
	
	method madurez() {
		return madurez
	}
	
	method madurez(_madurez) {
		madurez = _madurez
	}
	
	method madurar() {
		self.madurez(madurez + 1)
	}
	
	method energiaQueAporta() {
		return base * madurez
	}
	
}

object pepon {
	var energia = 30
	
	method energia() {
		return energia
	}
		
	method comer(comida) {
		energia += energia + comida.energiaQueAporta() / 2
	}
		
	method volar(distancia) {
		energia = 
				if (self.puedeVolar(distancia)) { 
					self.energiaQueConsumeVolar(distancia) 
				} else self.errorAlVolar()
	}
	method energiaQueConsumeVolar(distancia){
		return energia - 20 - 2*distancia
	}

	method puedeVolar(distancia) {
		return self.energiaQueConsumeVolar(distancia) > 0
	}
	method errorAlVolar(){
		assert.throwsException({"Pepon no tiene suficiente energia:r"})
	}
	
}

object roque {
	var ave = pepita
	var cenas = 0;
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}

	method cenas(){
		return cenas
	}
}

