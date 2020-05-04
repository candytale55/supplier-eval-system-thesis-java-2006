/*
 * cCiudad.java
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
public class cCiudad {
    
    String stIdCiudad;
    String stNomCiudad;
    String stIdEstado;
    String stIdPais;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    public void GuardarCiudad()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_ciudad_inserta ?,?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdCiudad);
            sentencia.setString(2,stNomCiudad);
            sentencia.setString(3,stIdEstado);
            sentencia.setString(4,stIdPais);
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
    
    public void ModificarCiudad()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_ciudad_update ?,?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdCiudad);
            sentencia.setString(2,stNomCiudad);
            sentencia.setString(3,stIdEstado);
            sentencia.setString(4,stIdPais);
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
    
    public void EliminarCiudad()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_ciudad_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdCiudad);
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
    
    public void BuscarCiudad()
    {}
    
    
    
    /** Constructor Completo */
    public cCiudad(String IdCiudad, String NomCiudad, String IdEstado, String IdPais) 
    {
        stIdCiudad      =   IdCiudad;
        stNomCiudad     =   NomCiudad;
        stIdEstado      =   IdEstado;
        stIdPais        =   IdPais;
    }
    
    
    
    
}
