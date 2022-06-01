package DVMarket;


public aspect SalidaProductos {
	pointcut callBorrarItem(): call(* *.borrarItem(..));
	 after()  : callBorrarItem() {
		
	 }
}
