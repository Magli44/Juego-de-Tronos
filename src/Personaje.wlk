import casas.*
import acompaniantes.*
import personalidades.*

class Personaje{
	var casa
	var conyuges = #{}
	var acompaniantes = #{}
	var estado
	var personalidad
	
	constructor(unaCasa, unosConyuges, unosAcompaniantes, unEstado, unaPersonalidad){
		casa = unaCasa
		conyuges = unosConyuges
		acompaniantes = unosAcompaniantes
		estado = unEstado
		personalidad = unaPersonalidad
	}
	
	method estaSolo(){
		return conyuges.length() == 0
	}
	
	method puedenCasarse(unMiembro, unaPareja){
		return  casa.puedeCasarse(unMiembro, unaPareja)
	}
	
	method casarse(unMiembro, unaPareja){
		if( !(casa.puedeCasarse(unMiembro, unaPareja))){
			throw new Exception("No puede casarse por las reglas de la casa.")
		}else{
			return true
		}
	}
	
	method patrimonio(){
		casa.patrimonioPersonaje()
	}
	
	method noTieneAcompaniantes(){
		return acompaniantes.length() == 9
	}
	
	method aliados(){
		return (conyuges && acompaniantes && casa.miembrosDeLaCasa())
	}
	
	method esPeligroso(){
		return (self.estaVivo() && self.aliadosOConyugesRicos() && self.alianzaConAlguienPeligroso())
	}
	
	method estaVivo(){
		return estado
	}
	
	method aliadosOConyugesRicos(){
		return (self.patrimonioTotalALiados() || self.conyugesDeCasaRica()) 
	}
	
	method patrimonioTotalALiados(){
		return (self.aliados().sum({aliado => aliado.patrimonio()}) > 10000)
	}
	method conyugesDeCasaRica(){
		return conyuges.all({conyuge => conyuge.esRico()})
	}
	
	method esRico(){
		return casa.esRica()
	}
	
	method alianzaConAlguienPeligroso(){
		return self.aliados().any({ aliado => aliado.esPeligroso()})
	}
	
	method esAmigoDelPersonajeObjetivo(unPersonajeObjetivo){
		return unPersonajeObjetivo.aliados().contains(self)
	}
	
	method morir(){
		estado = 'muerto'
	}
	
	method derrocharFortuna(unPorcentaje){
		casa.derrocharFortunaCasa(unPorcentaje)
	}
	
	method ejecutarAccionConspirativa(unPersonajeObjetivo){
		personalidad.accionConspirativa(unPersonajeObjetivo)
	}
}