package DVMarket;
import java.io.FileWriter;





public aspect SalidaProductos {
	pointcut callBorrarItem(): call(* DVMarket.borrarItem(..));
	 after()  : callBorrarItem() {
		 try{
			 FileWriter fw = new FileWriter("market.log", true);
		 fw.write("Item Borrado "+"Fecha: "+Tiempo.fechaDeHoy()+" Hora: "+Tiempo.horaExacta()+"\n");
		 fw.close();
	 	}catch(Exception e){}
	 }
}
