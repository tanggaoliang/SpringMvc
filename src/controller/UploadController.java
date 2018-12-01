package controller;

import org.apache.commons.lang.xwork.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.UploadImageFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
public class UploadController {
    @RequestMapping("/uploadImage")
    public ModelAndView upload(HttpServletRequest request, UploadImageFile file) throws IOException {
        String name = RandomStringUtils.randomAlphanumeric(10);
        String newFileName = name + ".jpg";
        File newFile = new File(request.getServletContext().getRealPath("/image"), newFileName);
        if(newFile.getParentFile().mkdirs()){
            System.out.println("创建文件夹成功");
        }else {
            System.out.println("文件夹已经存在");
        }
        file.getImage().transferTo(newFile);
        ModelAndView mav = new ModelAndView("showUploadFile");
        mav.addObject("imageName", newFileName);
        return mav;

    }
}
