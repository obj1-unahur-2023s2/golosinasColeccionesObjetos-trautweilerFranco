import gustos.*

object bombon {
	var pesoGr = 15
	
	method valor(){return 5}
	
	method sabor() { return frutilla}
	
	method peso() {return pesoGr}
	
	method tieneGluten(){ return false }
	
	method recibirMordisco() {
		pesoGr = (pesoGr * 0.8) -1
	}
}

object alfajor {
	var pesoGr = 300
	
	method valor(){return 12}
	
	method sabor() { return chocolate}
	
	method pesoGr() {return pesoGr}
	
	method tieneGluten(){ return true }
	
	method recibirMordisco() {
		pesoGr = pesoGr * 0.8
	}
}

object caramelo {
	var pesoGr = 5
	
	method valor(){return 1}
	
	method sabor() { return frutilla}
	
	method pesoGr() {return pesoGr}
	
	method tieneGluten(){ return false }
	
	method recibirMordisco() {
		pesoGr = pesoGr - 1
	}
}

object chupetin {
	var pesoGr = 7
	
	method valor(){return 2}
	
	method sabor() { return naranja}
	
	method pesoGr() {return pesoGr}
	
	method tieneGluten(){ return false }
	
	method recibirMordisco(){
		if (pesoGr <= 2){
		 pesoGr = pesoGr * 0.9
		 return pesoGr	
		} else {
			return pesoGr
		}
	}
}

object oblea {
	var pesoGr = 250
	
	method valor(){return 5}
	
	method sabor() { return vainilla}
	
	method pesoGr() {return pesoGr}
	
	method tieneGluten(){ return true }
	
	method recibirMordisco(){
		if (pesoGr > 70){
		 pesoGr = pesoGr * 0.5
		 return pesoGr	
		} else {
			pesoGr = pesoGr * 0.75
			return pesoGr
		}
	}
}


object chocolatin {
	
	var pesoGr = 0
	
	var valor = 0
	
	method valor(){
		valor = 0.50 * pesoGr
		return valor
	}
	
	method sabor() { return chocolate}
	
	method pesoGr(unPeso) {
		pesoGr = unPeso
		return pesoGr
	}
	
	method tieneGluten(){ return true }
	
	method recibirMordisco(){
		pesoGr -= 2
	}
}

object baniada {
	var golosina  
	
	method pesoBanio() {
		return 0.max(4)
	}	
	method golosina(unaGolosina) {
		golosina = unaGolosina	
	}
	method valor(){
		return golosina.valor() + 2
	}
	
	method sabor() {
		return golosina.sabor()
	
	}
	
	method pesoGr() {
		return golosina.pesoGr() + 4
	}
	
	method tieneGluten(){ return golosina.tieneGluten() }
		
}


object pastilla {
	
	var peso = 5
	var tieneGluten
	var valor
	var sabor = frutilla
	
	method tieneGluten(){
		if (valor == 7){
			tieneGluten = false
			return tieneGluten
		} else {
			tieneGluten = true
			return tieneGluten
		}
	}
	
	
	method valor(){
		if (tieneGluten) {
			valor = 10
			return valor 
		} else {
			valor = 7
			return valor
		}
	}
	
	method recibirMordisco(){
		 peso -= 1
		 return peso
	}
	
	method sabor(){
		if (frutilla.gusto() == sabor){
			sabor = chocolate
			self.recibirMordisco()
			return sabor
		} else if (chocolate.gusto() == sabor) {
			sabor = naranja
			self.recibirMordisco()
			return sabor
		}else if(naranja.gusto() == sabor)
			sabor = frutilla
			self.recibirMordisco()
			return sabor		
	}
}

