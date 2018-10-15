package com.wangwang.test.action;

import java.util.HashMap;  
import java.util.List;  
import java.util.Map;  
  

import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  

import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.ServletRequestUtils;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.web.servlet.ModelAndView;  

import com.wangwang.test.common.FileOperateUtil;
  
  
/** 
 *  
 * @author geloin 
 * @date 2012-5-5 ����11:56:35 
 */  
@Controller  
@RequestMapping("/fileOperate")  
public class FileOperateController {  
    /** 
     * ���ϴ��ļ���λ�� 
     *  
     * @author geloin 
     * @date 2012-3-29 ����4:01:31 
     * @return 
     */  
    @RequestMapping("/to_upload")  
    public ModelAndView toUpload() {  
        return new ModelAndView("/upload");  
    }  
  
    /** 
     * �ϴ��ļ� 
     *  
     * @author geloin 
     * @date 2012-3-29 ����4:01:41 
     * @param request 
     * @return 
     * @throws Exception 
     */  
    @RequestMapping("/upload")  
    public ModelAndView upload(HttpServletRequest request) throws Exception {  
  
        FileOperateUtil.upload(request);  
        return new ModelAndView("/fileOperate/list");  
    }  
  
    /** 
     * ���� 
     *  
     * @author geloin 
     * @date 2012-3-29 ����5:24:14 
     * @param attachment 
     * @param request 
     * @param response 
     * @return 
     * @throws Exception 
     */  
    @RequestMapping("/download")  
    public ModelAndView download(HttpServletRequest request,  
            HttpServletResponse response) throws Exception {  
  
        String storeName = "201205051340364510870879724.zip";  
        String realName = "Java���ģʽ.zip";  
        String contentType = "application/octet-stream";  
  
        FileOperateUtil.download(request, response, storeName, contentType,  
                realName);  
  
        return null;  
    }  
}
