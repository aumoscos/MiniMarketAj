package DVMarket;

public aspect SalidaProductos {
	pointcut callBorrarItem(): call(* Compra.borrarItem());
	 before() : callBorrarItem() {
		 System.out.println("After Item Borrado");
	 }
}
