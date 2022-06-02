package DVMarket;
import java.io.FileWriter;

import org.aspectj.lang.reflect.CodeSignature;
public aspect Busquedas {	
	
pointcut callBuscar() : call(* *.buscar*(..));
	after() : callBuscar(){
		try{
		 CodeSignature codeSignature = (CodeSignature) thisJoinPoint.getSignature();
		 FileWriter fw = new FileWriter("consultas.log", true);
		 fw.write("Item Buscado "+"Tipo: "+ thisJoinPoint.getSignature().getDeclaringTypeName()+
				 " Metodo: "+codeSignature.getName()+" Fecha: "+Tiempo.fechaDeHoy()+
				 " Hora: "+Tiempo.horaExacta()+"\n");
		 fw.close();
		}catch(Exception e){}	
		 
	}	
}
