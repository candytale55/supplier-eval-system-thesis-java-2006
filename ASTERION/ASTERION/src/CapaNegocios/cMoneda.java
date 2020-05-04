/*
 * cMoneda.java
 *
 * Created on 5 de febrero de 2007, 06:25 PM
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
public class cMoneda {
    
    String stIdMoneda;
    String stNomMoneda;
    String stIdPais;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    public void GuardarMoneda()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_moneda_inserta ?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdMoneda);
            sentencia.setString(2,stNomMoneda);
            sentencia.setString(3,stIdPais);
            sentencia.executeUpdate();
            
        }
        catch (Exception EXInsert)
        {System.out.println("Error en la inserción del objeto "+ EXInsert.getMessage());}    
                      
       finally
        {
            if(stmt!=null)
            {
               try
               {
                  stmt.close();
               }
               catch(SQLException sqlEx)
               {
                   stmt= null;
               }
            }
        }
    }
    
    public void ModificarMoneda()
    {
        
        try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_moneda_update ?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdMoneda);
            sentencia.setString(2,stNomMoneda);
            sentencia.setString(3,stIdPais);
            sentencia.executeUpdate();
            
        }
        catch (Exception EXUpdate)
        {System.out.println("Error en la modificación del objeto "+ EXUpdate.getMessage());}    
                      
       finally
        {
            if(stmt!=null)
            {
               try
               {
                  stmt.close();
               }
               catch(SQLException sqlEx)
               {
                   stmt= null;
               }
            }
        }
           
    }
    
    public void EliminarMoneda()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_moneda_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdMoneda);
            sentencia.executeUpdate();
            
        }
        catch (Exception EXDelete)
        {System.out.println("Error en la eliminación del objeto "+ EXDelete.getMessage());}    
                      
       finally
        {
            if(stmt!=null)
            {
               try
               {
                  stmt.close();
               }
               catch(SQLException sqlEx)
               {
                   stmt= null;
               }
            }
        }
    }
    
    public void BuscarMoneda()
    {}
    
    
    /** Constructor Completo */
    public cMoneda(String IdMoneda, String NomMoneda, String IdPais) 
    {
        stIdMoneda      =   IdMoneda;
        stNomMoneda     =   NomMoneda;
        stIdPais        =   IdPais;
    }
    
}
