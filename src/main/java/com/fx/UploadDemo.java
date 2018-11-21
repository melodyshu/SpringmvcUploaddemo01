package com.fx;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadDemo {

    @ModelAttribute("userx")
    public User populateModel() {
        User user=new User();
        user.setName("tom");
        user.setAge(39);
        return user;
    }

    @RequestMapping("/demo/init.do")
    public String init(){
        System.out.println("page init...");
        return "index";
    }

    @RequestMapping("/demo/testupload.do")
    public String testUpload(@RequestParam("multiFile") MultipartFile multipartFile){
        System.out.println(multipartFile.getOriginalFilename());
        return "index";
    }
}
