package com.etc.leaf.dao;

import com.etc.leaf.dto.Image_info;

import java.sql.*;
import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.List;

/**
 * Created by LiKe on 03/12/2016.
 */
public class SearchDao extends DataBaseDao{

    public List<Image_info> getsearchedimg(String value){
        value = value
                .replace("!", "!!")
                .replace("%", "!%")
                .replace("_", "!_")
                .replace("[", "![");
        System.out.println("dao输出="+"%"+value+"%");
        String sql="SELECT * FROM Leaf_info WHERE NAME LIKE ? ";
        List<Image_info> list = new ArrayList<Image_info>();
        Image_info ii = null;
        openconnection();
        try{
            ps=con.prepareStatement(sql);
            ps.setString(1,"%"+value+"%");
            rs=ps.executeQuery();
            while (rs.next()){
                ii = new Image_info();
                ii.name = rs.getString("name");
                ii.content= rs.getString("content");
                ii.img1_path=rs.getString("img1_path");
                ii.img2_path=rs.getString("img2_path");
                ii.img3_path=rs.getString("img3_path");
                list.add(ii);
            }
// for sql-test
//            for (int i=0;i<list.size();i++){
//                System.out.println("name"+i+"="+list.get(i).name);
//                System.out.println("content"+i+"="+list.get(i).content);
//                System.out.println("path1="+list.get(i).img1_path);
//            }

            return list;

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            closeResource();
        }
        return null;
    }

}
