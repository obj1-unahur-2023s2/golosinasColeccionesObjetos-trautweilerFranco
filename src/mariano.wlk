import golosinas.*

object mariano {
	const bolsa = []

	method comprar(unaGolosina){
		return bolsa.add(unaGolosina)
	}
	
	method desechar(unaGolosina){
		return bolsa.remove(unaGolosina)
	}
	
	method cantidadDeGolosinas(){
		return bolsa.size()
	}
	
	method tieneLaGolosina(unaGolosina){
		return bolsa.contains(unaGolosina)
	}
	
	method hayGolosinaSinTACC(){
		return bolsa.any({p => p.tieneGluten()})
	}
	
	method preciosCuidados(){
		return bolsa.all({p => p.valor() <= 10})
	}
	
	method golosinaDeSabor(unSabor){
		return bolsa.find({p => p.sabor() == unSabor})
	}
	
	method golosinasDeSabor(unSabor){
		return bolsa.count({p => p.sabor() == unSabor})
	}
	
	method sabores(){
		return bolsa.map({p => p.sabor()})
	}
	
	method golosinaMasCara(){
		return bolsa.max({p => p.valor()})
	}
	
	method pesoGolosinas(){
		return bolsa.sum({p => p.valor()})
	}
	
	method golosinasFaltantes(golosinasDeseadas){
		return bolsa.filter({p => golosinasDeseadas != bolsa })
	}
	
	method gustosFaltantes(golosinasDeseadas){
		return bolsa.filter({p => golosinasDeseadas != bolsa.sabor()})
	}
}


