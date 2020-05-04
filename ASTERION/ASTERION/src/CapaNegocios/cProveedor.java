/*
 * cProveedor.java
 *
 * Created on 31 de enero de 2007, 07:58 PM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package CapaNegocios;
import javax.sql.*;
import java.sql.*;
import java.util.*;
import CapaNegocios.cPais;



/**
 *
 * @author Luis
 */
public class cProveedor {
    
   // DefaultTableModel modelo;
       
    String stIdProv;
    String stNomProv;
    String stFecAltProv;
    String stRepProv;
    String stConBusq1;
    String stConBusq2;
    String stTaxIdProv;
    String stDirProv;
    String stColProv;
    String stCodPostProv;
    String stIdPais;
    String stIdEstado;
    String stIdCiudad;
    String stTelProv1;
    String stTelProv2;
    String stTelProv3;
    String stFaxProv;
    String stMailProv;
    int iDiasCredProv;
    String stStatusProv;
    String stEstadoProv;
    String stFecModProv;
    
    //QUITAR CUANDO SE CREE LA CLASE cCONEXION
    String url = "jdbc:odbc:GHP Asterion";
    String usuario = "Luis";
    String contrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    
    public Vector CreaVector()
    {
    
        Vector columnas = new Vector();
         
        columnas.add("Clave");
        columnas.add("Razón Social");
        
        return columnas;
    }
    
   
    
    public void EliminarProveedor() /* NO SE USA */
    { 
      try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String deleteQuery = "exec sp_proveedor_delete ? ";
            PreparedStatement sentencia = con.prepareStatement(deleteQuery);
            sentencia.setString(1,stIdProv);
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
        
    public void ModificarProveedor()
    {
    try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String insertQuery = "exec sp_proveedor_update ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            
           
            sentencia.setString(1,stNomProv);
           
            
            if (stRepProv!="")
            {sentencia.setString(2,stRepProv);}
                        
            if (stConBusq1!="")
            {sentencia.setString(3,stConBusq1);}
                        
            if (stConBusq2!="")
            {sentencia.setString(4,stConBusq2);}
                        
           
            sentencia.setString(5,stDirProv);
            
            if (stColProv!="")
            {sentencia.setString(6,stColProv);}
                        
            if (stCodPostProv!="")
            {sentencia.setString(7,stCodPostProv);}
                        
            sentencia.setString(8,stIdPais);
            
            if (stIdEstado!="")
            {sentencia.setString(9,stIdEstado);}
                        
            sentencia.setString(10,stIdCiudad);
            sentencia.setString(11,stTelProv1);
            
            if (stTelProv2!="")
            {sentencia.setString(12,stTelProv2);}
                        
            if (stTelProv3!="")
            {sentencia.setString(13,stTelProv3);}
            
            sentencia.setString(14,stFaxProv);

            if (stMailProv!="")
            {sentencia.setString(15,stMailProv);}
                      
            sentencia.setInt(16,iDiasCredProv);
            sentencia.setString(17,stEstadoProv);
          
            if (stFecModProv!="")
            {sentencia.setString(18,stFecModProv);}
                                        
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
    
    public void GuardarProveedor()
    {
                                     
       try
        {   con = DriverManager.getConnection(url,usuario,contrasena);
            stmt = con.createStatement();
            String insertQuery = "exec sp_proveedor_inserta ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?";
            PreparedStatement sentencia = con.prepareStatement(insertQuery);
            
            sentencia.setString(1,stIdProv);
            sentencia.setString(2,stNomProv);
            sentencia.setString(3,stFecAltProv);
            
            if (stRepProv!="")
            {sentencia.setString(4,stRepProv);}
                        
            if (stConBusq1!="")
            {sentencia.setString(5,stConBusq1);}
                        
            if (stConBusq2!="")
            {sentencia.setString(6,stConBusq2);}
                        
            sentencia.setString(7,stTaxIdProv);
            sentencia.setString(8,stDirProv);
            
            if (stColProv!="")
            {sentencia.setString(9,stColProv);}
                        
            if (stCodPostProv!="")
            {sentencia.setString(10,stCodPostProv);}
                        
            sentencia.setString(11,stIdPais);
            
            if (stIdEstado!="")
            {sentencia.setString(12,stIdEstado);}
                        
            sentencia.setString(13,stIdCiudad);
            sentencia.setString(14,stTelProv1);
            
            if (stTelProv2!="")
            {sentencia.setString(15,stTelProv2);}
                        
            if (stTelProv3!="")
            {sentencia.setString(16,stTelProv3);}
            
            sentencia.setString(17,stFaxProv);

            if (stMailProv!="")
            {sentencia.setString(18,stMailProv);}
                      
            sentencia.setInt(19,iDiasCredProv);
            sentencia.setString(20,stStatusProv);
            sentencia.setString(21,stEstadoProv);
          
            if (stFecModProv!="")
            {sentencia.setString(22,stFecModProv);}
                                        
            sentencia.executeUpdate();
            
            
        }
        catch (Exception EXInsert)
        {System.out.println("Error en la creación del objeto "+ EXInsert.getMessage());}    
                      
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
    
    /** Constructor para todos los campos menos FecModProv (Para cuando se crea un nuevo proveedor) */
    public cProveedor(String IdProv, String NomProv, String FecAltProv, String RepProv,
                      String ConBusq1, String ConBusq2, String TaxIdProv,
                      String DirProv, String ColProv, String CodPostProv, String IdPais, 
                      String IdEstado, String IdCiudad, String TelProv1, String TelProv2, String TelProv3,
                      String FaxProv, String MailProv, int DiasCredProv, String StatusProv, String EstadoProv)
    {
        stIdProv        =   IdProv;
        stNomProv       =   NomProv;
        stFecAltProv    =   FecAltProv;
        stRepProv       =   RepProv;
        stConBusq1      =   ConBusq1;
        stConBusq2      =   ConBusq2;
        stTaxIdProv     =   TaxIdProv;
        stDirProv       =   DirProv;
        stColProv       =   ColProv;
        stCodPostProv   =   CodPostProv;
        stIdPais        =   IdPais;
        stIdEstado      =   IdEstado;
        stIdCiudad      =   IdCiudad;
        stTelProv1      =   TelProv1;
        stTelProv2      =   TelProv2;
        stTelProv3      =   TelProv3;
        stFaxProv       =   FaxProv;
        stMailProv      =   MailProv;
        iDiasCredProv   =   DiasCredProv;
        stStatusProv    =   StatusProv;
        stEstadoProv    =   EstadoProv;
        
    }
    
    /** Constructor para todos los campos incluyendo FecModProv (Cuando se modifica un proveedor) */
    public cProveedor(String IdProv, String NomProv, String FecAltProv, String RepProv,
                      String ConBusq1, String ConBusq2, String TaxIdProv,
                      String DirProv, String ColProv, String CodPostProv, String IdPais, 
                      String IdEstado, String IdCiudad, String TelProv1, String TelProv2, String TelProv3,
                      String FaxProv, String MailProv, int DiasCredProv, String StatusProv, String EstadoProv,
                      String FecModProv)
    {
        stIdProv        =   IdProv;
        stNomProv       =   NomProv;
        stFecAltProv    =   FecAltProv;
        stRepProv       =   RepProv;
        stConBusq1      =   ConBusq1;
        stConBusq2      =   ConBusq2;
        stTaxIdProv     =   TaxIdProv;
        stDirProv       =   DirProv;
        stColProv       =   ColProv;
        stCodPostProv   =   CodPostProv;
        stIdPais        =   IdPais;
        stIdEstado      =   IdEstado;
        stIdCiudad      =   IdCiudad;
        stTelProv1      =   TelProv1;
        stTelProv2      =   TelProv2;
        stTelProv3      =   TelProv3;
        stFaxProv       =   FaxProv;
        stMailProv      =   MailProv;
        iDiasCredProv   =   DiasCredProv;
        stStatusProv    =   StatusProv;
        stEstadoProv    =   EstadoProv;
        stFecModProv    =   FecModProv;
        
    }
    
    
        /** Constructor con solo el campo IdProv (Cuando se elimina un proveedor) **/
    public cProveedor(String IdProv) 
    {
        
        stIdProv = IdProv;
    }
    
}



