/*
 * cMedida.java
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
public class cMedida {
    
    String stIdMedida;
    String stNomMedida;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    public void GuardarMedida()
    {
     try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_medida_inserta ?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdMedida);
            sentencia.setString(2,stNomMedida);
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
    
    public void ModificarMedida()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_medida_update ?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdMedida);
            sentencia.setString(2,stNomMedida);
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
    
    public void EliminarMedida()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_medida_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdMedida);
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
    
    public void BuscarMedida()
    {}
    
    /** Constructor Completo */
    public cMedida(String IdMedida, String NomMedida) 
    {
        stIdMedida      =   IdMedida;
        stNomMedida     =   NomMedida;
    }
    
}
