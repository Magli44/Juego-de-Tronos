class Familia{
	
	var patrimonio
	var miembros = #{}
	var ciudad
	
	constructor(unPatrimonio, unosMiembros, unaCiudad){
		patrimonio = unPatrimonio
		miembros = unosMiembros
		ciudad = unaCiudad
	}
	
	method esRica(){
			return patrimonio > 1000
		}
		
	method patrimonioPersonaje(){
			return patrimonio / miembros.length()
		}
		
	method miembrosDeLaCasa(){
		return miembros
	}
}


object casaLannister inherits Familia(null, null, null){
	 
	
	
	method puedeCasarse(unMiembro, unaPareja){
		unMiembro.estaSolo()
		}
	
}


object casaStark inherits Familia(null, null, null){
	
	
	method puedeCasarse(unMiembro, unaPareja){
		return !(miembros.contains(unaPareja))
	}
	
}

object casaGuardiaDeLaNoche inherits Familia(null, null, null){
	
	
	method puedeCasarse(unMiembro, unaPareja){
		return false
	}
	
}
