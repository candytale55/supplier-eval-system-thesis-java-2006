/*
 * cConexion.java
 *
 * Sentencia para conectarse a la base de datos
 *
 */

package CapaDatos;

import javax.sql.*;
import java.sql.*;



/**
 *
 * @author Gabriela Hernández
 */
public class cConexion {
    
    String stUrl = "jdbc:odbc:GHP Asterion";
    String stUsuario = "Luis";
    String stContrasena ="hola";
    Connection con = null;
    Statement stmt = null;
    ResultSet rs = null;
    
    public void Conectame()
    {
         try
        {
        Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
        }
   catch
        (Exception EX1) 
        {System.out.println(" Error en la conexión a la base de datos" + EX1.getMessage() );}
    }
    
    
    public cConexion()
    {}
    
    
    /** Creates a new instance of cConexion */
    public cConexion(String Url, String Usuario, String Contrasena, Connection ccon, 
                     Statement sstmt, ResultSet rrs) 
    {
            Url         =   stUrl;
            Usuario     =   stUsuario;
            Contrasena  =   stContrasena;
            ccon        =   con;
            sstmt       =   stmt;
            rrs         =   rs;
    }
    
}
