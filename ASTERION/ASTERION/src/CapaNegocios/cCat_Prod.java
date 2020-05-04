/*
 * cCat_Prod.java
 *
 * Created on 5 de febrero de 2007, 06:49 PM
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
public class cCat_Prod {
    
    String stIdCatProd;
    String stNomCatProd;
    int iPercCalidad;
    int iTolCalidad;
    int iPercCantidad;
    int iTolSupCantidad;
    int iTolInfCantidad;
    int iPercEntrega;
    int iTolSupEntrega;
    int iTolInfEntrega;
    int iPercDoc;
    
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    public void GuardarCat_Prod()
    {
    
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_cat_prod_inserta ?,?,?,?,?,?,?,?,?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdCatProd);
            sentencia.setString(2,stNomCatProd);
            sentencia.setInt(3,iPercCalidad);
            sentencia.setInt(4,iTolCalidad);
            sentencia.setInt(5,iPercCantidad);
            sentencia.setInt(6,iTolSupCantidad);
            sentencia.setInt(7,iTolInfCantidad);
            sentencia.setInt(8,iPercEntrega);
            sentencia.setInt(9,iTolSupEntrega);
            sentencia.setInt(10,iTolInfEntrega);
            sentencia.setInt(11,iPercDoc);
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
    
    public void ModificarCat_Prod()
    {
        try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            
            String insertQuery = "exec sp_cat_prod_update ?,?,?,?,?,?,?,?,?,?,? ";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            sentencia.setString(1,stIdCatProd);
            sentencia.setString(2,stNomCatProd);
            sentencia.setInt(3,iPercCalidad);
            sentencia.setInt(4,iTolCalidad);
            sentencia.setInt(5,iPercCantidad);
            sentencia.setInt(6,iTolSupCantidad);
            sentencia.setInt(7,iTolInfCantidad);
            sentencia.setInt(8,iPercEntrega);
            sentencia.setInt(9,iTolSupEntrega);
            sentencia.setInt(10,iTolInfEntrega);
            sentencia.setInt(11,iPercDoc);
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
    
    public void EliminarCat_Prod()
    {
         try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_cat_prod_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdCatProd);
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
    
    public void BuscarCat_Prod()
    {}
    
    /** Constructor Completo */
    public cCat_Prod (String IdCatProd, String NomCatProd, int PercCalidad, int TolCalidad,
                      int PercCantidad, int TolSupCantidad, int TolInfCantidad, 
                      int PercEntrega, int TolSupEntrega, int TolInfEntrega, int PercDoc) 
    {
        stIdCatProd     =   IdCatProd;
        stNomCatProd    =   NomCatProd;
        iPercCalidad    =   PercCalidad;
        iTolCalidad     =   TolCalidad;
        iPercCantidad   =   PercCantidad;
        iTolSupCantidad =   TolSupCantidad;
        iTolInfCantidad =   TolInfCantidad;
        iPercEntrega    =   PercEntrega;
        iTolSupEntrega  =   TolSupEntrega;
        iTolInfEntrega  =   TolInfEntrega;
        iPercDoc        =   PercDoc;
    }
    
}
