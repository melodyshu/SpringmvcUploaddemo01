package com.fx;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

@Controller
public class UploadDemo {

    @RequestMapping("/demo/init.do")
    public String init(){
        System.out.println("page init...");
        return "index";
    }

    @RequestMapping("/demo/init2.do")
    public ModelAndView init2(){
        ModelAndView mv=new ModelAndView("index");
        mv.addObject("name","zhangsan");
        return mv;
    }

    @RequestMapping("/demo/init3.do")
    public String init3(ModelMap modelMap){
        modelMap.put("name2","zhangsan2");
        return "index";
    }

    @RequestMapping("/demo/init4.do")
    public String init3(Model model){
        model.addAttribute("name3","zhangsan3");
        return "index";
    }

    @RequestMapping("/demo/init5.do")
    public String init4(Map map){
        map.put("name4","zhangsan4");
        return "index";
    }

    @RequestMapping("/demo/testupload.do")
    public String testUpload(@RequestParam("multiFile") MultipartFile multipartFile){
        System.out.println(multipartFile.getOriginalFilename());
        return "index";
    }
}
