
class Conspiracion {
		
		var participantes
		var personajeObjetivo
		
		constructor(unosParticipantes, unPersonajeObjetivo){
		
		participantes = unosParticipantes
		if(unPersonajeObjetivo.esPeligroso()){
			personajeObjetivo = unPersonajeObjetivo
		}else {
			throw new Exception("El personaje objetivo NO es peligroso")
		}
	}
	
	method traidores(){
		return (participantes.map({participante => participante.esAmigoDelPersonajeObjetivo(unPersonajeObjetivo)}).length())
	}
	
		
		
}