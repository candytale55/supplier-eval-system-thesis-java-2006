/*
 * cPais.java
 *
 * Created on 29 de enero de 2007, 06:44 PM
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
 * Esta clase maneja los objetos Paises
 * 
 * El objeto se crea mediante un sólo constructor, que recibe los dos elementos desde la forma "Pais" 
 * de la CapaPresentacion.  
 *
 */
public class cPais {
    
     String stIdPais;
     String stNomPais;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
   
     

    public void GuardarPais()
    {
                                      
       try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_pais_inserta ?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdPais);
            sentencia.setString(2,stNomPais);
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
     
    public void ConsultarPais()
    {}

    
    
    
   
    
    public void ModificarPais()
    {
     try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_pais_update ?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdPais);
            sentencia.setString(2,stNomPais);
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
    
    public void EliminarPais()
    {
    
         try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_pais_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdPais);
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
    
      
    
    
    /** Constructor Completo**/
    
    public cPais(String IdPais, String NomPais) 
    {
    
    stIdPais=IdPais;
    stNomPais=NomPais;     
        
    }
    
    
}