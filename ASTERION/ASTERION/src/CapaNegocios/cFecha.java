/*
 * cFecha.java
 *
 * Created on 31 de enero de 2007, 10:37 PM
 *
 * 
 */

package CapaNegocios;
import java.util.GregorianCalendar;
import javax.sql.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Gabriela Hernandez
 */
public class cFecha {
        
        String stDia, stMes, stAnio;
        int iHora, iMinuto, iSegundo;
        String stFechaActual;
        Calendar cal = new GregorianCalendar(); 
               
    public String FechaHoyLetra()
    {
 
        stDia = Integer.toString(cal.get(Calendar.DATE));
        stMes = Integer.toString(cal.get(Calendar.MONTH));
        
        switch(Integer.parseInt(stMes))
        {
        
            case 1: stMes= "enero"; break;
            case 2: stMes= "febrero"; break;
            case 3: stMes= "marzo"; break;
            case 4: stMes= "abril"; break;
            case 5: stMes= "mayo "; break;
            case 6: stMes= "junio"; break;
            case 7: stMes= "julio"; break;
            case 8: stMes= "agosto"; break;
            case 9: stMes= "septiembre"; break;
            case 10: stMes= "octubre"; break;
            case 11: stMes= "noviembre"; break;
            case 12: stMes= "diciembre"; break;
            
        }
        
        stAnio = Integer.toString(cal.get(Calendar.YEAR));
        iHora = cal.get(Calendar.HOUR);
        iMinuto = cal.get(Calendar.MINUTE);
        iSegundo = cal.get(Calendar.SECOND);
        
        stFechaActual = ""+stDia + " de " + stMes +" del " + stAnio+"";
        
        return stFechaActual;
        
    }
    
   
   
    public cFecha()
    {
    }
    
    
    /** Creates a new instance of cFecha */
    public cFecha(String Dia, String Mes, String Anio, int Hora, int Minuto, int Segundo) {
        
        stDia = Dia;
        stMes = Mes;
        stAnio = Anio;
        iHora = Hora;
        iMinuto = Minuto;
        iSegundo = Segundo;
        
    }
    
     public cFecha(String Dia, String Mes, String Anio) {
        
        stDia = Dia;
        stMes = Mes;
        stAnio = Anio;
            
    }
}
