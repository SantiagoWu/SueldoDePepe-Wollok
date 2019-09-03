object pepe {
	var puesto = gerente
	var tipoDeBonoxResultado = montoFijo
	var tipoDeBonoxPresentismo = ajuste
	var faltas = 0
	
	method cuantoFalto() {
		return faltas
	}
	
	method cambiarPuesto(unPuesto) {
		puesto = unPuesto
	}
	
	method puesto() {
		return puesto
	}
	
	method sueldo() {
		return puesto.sueldoNeto() + tipoDeBonoxResultado.bonoxResultados(puesto) + tipoDeBonoxPresentismo.bonoxPresentismo(self)
	}
}

object gerente {
	method sueldoNeto() {
		return 15000
	}
}

object cadete {
	method sueldoNeto() {
		return 20000
	}
}

object porcentaje {
	method bonoxResultados(puesto){
		return puesto.sueldoNeto()*0.1
	}
}

object montoFijo{
	method bonoxResultados(puesto){
		return 800
	}
}

object nulo {
	method bonoxResultados(){
		return 0
	}
	
	method bonoxPresentismo(empleado){
		return 0
	}
}

object normal {
	method bonoxPresentismo(empleado) {
		if(empleado.cuantoFalto() == 0)
		return 2000
		
		if(empleado.cuantoFalto() == 1)
		return 1000
		
		return 0
	}
}

object ajuste {
		method bonoxPresentismo(empleado) {
		if(empleado.cuantoFalto() == 0)
		return 100
		
		return 0
	}
}

object demagogico {
	method bonoxPresentismo(empleado) {
		if(empleado.puesto().sueldoNeto() < 18000)
		return 500
		
		return 300
	}
}