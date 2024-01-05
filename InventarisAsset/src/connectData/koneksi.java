/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connectData;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import javax.swing.JOptionPane;


/**
 *
 * @author User
 */
public class koneksi {
    public static Connection konek;
    public static Statement stmt;
    public static PreparedStatement prstmt;
    
    public koneksi() {
        
        try {
            
            String url="jdbc:mysql://localhost/inventaris_aset";
            String user="root";
            String password="";
            
            Class.forName("com.mysql.jdbc.Driver");
            
            konek=DriverManager.getConnection(url, user, password);
            stmt=konek.createStatement();
            System.out.println("database berhasil terkoneksi");
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e.toString());
       
        }
    }
}
