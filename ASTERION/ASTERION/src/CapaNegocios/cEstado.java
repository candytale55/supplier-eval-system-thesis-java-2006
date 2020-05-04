/*
 * cEstado.java
 *
 * Created on 1 de febrero de 2007, 09:49 PM
 *
 *
 */

package CapaNegocios;
import javax.sql.*;
import java.sql.*;
import java.util.*;

/**
 *
 * @author Gabriela Hernández
 *
 */
public class cEstado {
  
     String stIdEstado;
     String stNomEstado;
     String stIdPais;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
   
     public void GuardarEstado()
     {
            try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_estado_inserta ?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdEstado);
            sentencia.setString(2,stNomEstado);
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
     
     public void ModificarEstado()
     {
     try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_estado_update ?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdEstado);
            sentencia.setString(2,stNomEstado);
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
     
     public void EliminarEstado()
     {
          try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_estado_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdEstado);
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
     
     public void BuscarEstado()
     {}
     
     
    /** Constructor completo **/
    public cEstado(String IdEstado, String NomEstado, String IdPais) 
    {
        stIdEstado      =   IdEstado;
        stNomEstado     =   NomEstado;
        stIdPais        =   IdPais;
    }
    
    
   
    
    
}
