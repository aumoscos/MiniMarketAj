package DVMarket;

public aspect Busquedas {	
	pointcut callBuscar() : call(* *.buscar*(..));
	after() : callBuscar(){
		
	}
	
}
