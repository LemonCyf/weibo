package com.fifteen.servlet;



import com.fifteen.service.UserService;
import com.fifteen.service.imp.UserServiceImp;
import com.fifteen.upload.SmartUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.plaf.PanelUI;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;


@Controller
@RequestMapping("/updateHead")
public class SmartUploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
    @RequestMapping("/goToNewHead")
    public String goToNewHead(@RequestParam(value = "userId",required = false)String userId,
                              Model model){
        model.addAttribute("userId",userId);
        return "/jsp/new_head";
    }

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {



        req.setCharacterEncoding("UTF-8");
        // 设置上传的保存路径
        String filePath ="D:\\weibo\\client\\src\\main\\webapp\\head-img";
        // 创建文件对象 如果存在就不创建，否则创建文件夹
        File file = new File(filePath);
        if (file.exists()) {
            file.mkdir();
        }
        // 创建SmartUpload对象
        SmartUpload su = new SmartUpload();
        // 初始化对象
        su.initialize(getServletConfig(), req, resp);
        // 设置上传文件大小
        su.setTotalMaxFileSize(1024 * 1024 * 100);
        // 设置上传文件类型
        su.setAllowedFilesList("jpg,gif");
        // 创建提示变量
        String result = "上传成功";
        try {
            // 设置禁止上传类型
            su.setDeniedFilesList("rar,jsp,js");
            su.upload();
            // 返回上传文件数量
            int count = su.save(filePath);
            System.out.println("上传成功" + count + "个文件！");

        } catch (Exception e) {
            result = "上传失败";
            e.printStackTrace();
        }

        // 获取上传成功的文件的属性

        String head = "/head-img/";
        for (int i = 0; i < su.getFiles().getCount(); i++) {
            com.fifteen.upload.File tempFile = su.getFiles().getFile(i);
            System.out.println("---------------------");
            System.out.println("表单当中name属性值：" + tempFile.getFieldName());
            System.out.println("上传文件名：" + tempFile.getFieldName());
            System.out.println("上传文件长度:" + tempFile.getSize());
            System.out.println("上传文件的拓展名：" + tempFile.getFileExt());
            System.out.println("上传文件的全名：" + tempFile.getFilePathName());
            System.out.println("---------------------");
            head +=  tempFile.getFilePathName();

        }

        String userId = su.getRequest().getParameter("userId");
        UserService userService = new UserServiceImp();
        userService.updateHead(head,userId);

        req.setAttribute("result", result);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }
}
