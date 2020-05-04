/*
 * cProducto.java
 *
 * Created on 5 de febrero de 2007, 06:26 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package CapaNegocios;
import javax.sql.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Gabriela Hernández
 */
public class cProducto {
    
    String stIdProd;
    String stNomProd;
    String stIdMedida;
    String stIdCatProd;
    String stFecAltProd;
    String stObsProd;
    String stConBusq1;
    String stConBusq2;
    String stConBusq3;
    String stFecModProd;
    
    public void GuardarProducto()
    {}
    
    public void ModificarProducto()
    {}
    
    public void EliminarProducto()
    {}
    
    public void BuscarProducto()
    {}
    
    /** Constructor completo */
    public cProducto(String IdProd, String NomProd, String IdMedida, String IdCatProd,
                     String FecAltProd, String ObsProd, String ConBusq1, String ConBusq2,
                     String ConBusq3, String FecModProd) 
    {
        stIdProd        =       IdProd;
        stNomProd       =       NomProd;
        stIdMedida      =       IdMedida;
        stIdCatProd     =       IdCatProd;
        stFecAltProd    =       FecAltProd;
        stObsProd       =       ObsProd;
        stConBusq1      =       ConBusq1;
        stConBusq2      =       ConBusq2;
        stConBusq3      =       ConBusq3;
        stFecModProd    =       FecModProd;
    }
    
}
