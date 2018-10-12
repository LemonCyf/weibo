package com.fifteen.servlet;



import com.fifteen.upload.SmartUpload;
import com.fifteen.upload.SmartUploadException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SmartDownloadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 获取文件名称
        String filename = request.getParameter("filename");
        SmartUpload su = new SmartUpload();
        // 初始化
        su.initialize(getServletConfig(), request, response);
        // 把默认显示方式设为空
        su.setContentDisposition(null);

        try {
            su.downloadFile("/images/" + filename);
        } catch (SmartUploadException e) {
            e.printStackTrace();
        }
    }
}
