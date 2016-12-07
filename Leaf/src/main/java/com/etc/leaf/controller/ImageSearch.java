package com.etc.leaf.controller;

import com.etc.leaf.dto.Image_info;
import com.etc.leaf.services.Searchservice;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.List;

/**
 * Created by LiKe on 03/12/2016.
 */
@WebServlet(name="ImageSearch",urlPatterns = "/search")
@MultipartConfig
public class ImageSearch extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doPost(request,response);
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("utf-8");
        String search_value = request.getParameter("value");
        search_value= URLDecoder.decode(search_value, "UTF-8");
        System.out.print("request_get="+search_value);
//        TODO: 构建核心查询代码
//        TODO: 并通过查询获取返回结果
//        TODO: 需要在此将图片路径转换为图片二进制转发给response，即写入json中
        Searchservice ss = new Searchservice();
        List<Image_info> ii;
        ii=ss.getImagese(search_value);

        String output = new Gson().toJson(ii);
        System.out.println(output);

        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print(output);
        out.flush();
        out.close();

// for sql-test
//        for (int i=0;i<ii.size();i++){
//            System.out.println("name"+i+"="+ii.get(i).name);
//            System.out.println("content"+i+"="+ii.get(i).content);
//            System.out.println("path1="+ii.get(i).img1_path);
//        }

    }
}
