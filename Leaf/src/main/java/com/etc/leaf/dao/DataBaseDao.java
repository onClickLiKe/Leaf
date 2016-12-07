package com.etc.leaf.dao;

import java.sql.*;

/**
 * Created by LiKe on 03/12/2016.
 */
public class DataBaseDao {
    protected Connection con = null;
    protected PreparedStatement ps = null;
    protected ResultSet rs = null;
    protected Statement st = null;

    protected void openconnection(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Leaf?useUnicode=true&characterEncoding=UTF-8","root","12345");
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }catch (SQLException e){
            e.printStackTrace();
        }
    }

    protected boolean closeResource(){
        try{
            if(rs != null){
                rs.close();
            }
            if(ps != null){
                ps.close();
            }
            if(st!=null){
                st.close();
            }
            if(con!=null){
                con.close();
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return true;
    }
}
