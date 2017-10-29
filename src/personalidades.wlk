import Personaje.*

object sutiles {
 
method puedeCasar(){
	
}


}

object asesinos{
	
	method accionConspirativa(unPersonajeObjetivo){
		unPersonajeObjetivo.morir()
	}
	
}

object asesinosPrecavidos{
	
	method accionConspirativa(unPersonajeObjetivo){
		if(unPersonajeObjetivo.noTieneAcompaniantes()){
			unPersonajeObjetivo.morir()
		}
	}
}

object disipados{
	
	var porcentaje
	
	method accionConspirativa(unPersonajeObjetivo){
		unPersonajeObjetivo.derrocharFortuna(porcentaje)
	}
}

object miedosos{
	
	method accionConspirativa(unPersonajeObjetivo){
		
	}
}