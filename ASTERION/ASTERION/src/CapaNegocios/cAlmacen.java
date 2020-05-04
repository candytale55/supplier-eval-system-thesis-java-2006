/*
 * cAlmacen.java
 *
 * Created on 5 de febrero de 2007, 06:24 PM
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
public class cAlmacen {
    
    String stIdAlm;
    String stNomAlm;
    String stRepAlm;
    String stDirAlm;
    String stColAlm;
    String stCodPostAlm;
    String stIdPais;
    String stIdEstado;
    String stIdCiudad;
    String stTelAlm;
    String stFecAltAlm;
    String stFecModAlm;
    
    public void GuardarAlmacen()
    {}
    
    public void ModificarAlmacen()
    {}
    
    public void EliminarAlmacen()
    {}
    
    public void BuscarAlmacen()
    {}
    
    /** Constructor completo */
    public cAlmacen(String IdAlm, String NomAlm, String RepAlm, String DirAlm, String ColAlm, 
                    String CodPostAlm, String IdPais, String IdEstado, String IdCiudad, 
                    String TelAlm, String FecAltAlm, String FecModAlm) 
    {
        stIdAlm         =   IdAlm;
        stNomAlm        =   NomAlm;
        stRepAlm        =   RepAlm;
        stDirAlm        =   DirAlm;
        stColAlm        =   ColAlm;
        stCodPostAlm    =   CodPostAlm;
        stIdPais        =   IdPais;
        stIdEstado      =   IdEstado;
        stIdCiudad      =   IdCiudad;
        stTelAlm        =   TelAlm;
        stFecAltAlm     =   FecAltAlm;
        stFecModAlm     =   FecModAlm;
        
    }
    
}
