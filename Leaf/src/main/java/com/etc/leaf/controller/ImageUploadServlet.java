package com.etc.leaf.controller;

import javax.jws.WebService;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Paths;

/**
 * Created by LiKe on 01/12/2016.
 */
@WebServlet("/upload")
@MultipartConfig
public class ImageUploadServlet extends HttpServlet{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String description = request.getParameter("filename");
        Part filePart = request.getPart("file");
        String fileName = filePart.getName();
        System.out.print(fileName);
    }

}
