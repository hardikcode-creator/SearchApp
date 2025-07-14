package com.example;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import static javax.print.attribute.standard.ReferenceUriSchemesSupported.FILE;


@Controller
public class FileController {

    @RequestMapping("/fileform")
    public String showForm(){
        return "file-form";
    }

    @RequestMapping(path="/uploadImage", method= RequestMethod.POST)
    public String fileUpload(@RequestParam("fileName") String fileName , @RequestParam("file") MultipartFile file , HttpSession s ) throws IOException {
        System.out.println("Uploading your file");
        System.out.println(file.getSize());
        System.out.println(file.getOriginalFilename());
        System.out.println(fileName);


        // Storing the file
        byte[] data = file.getBytes();
        String path = s.getServletContext().getRealPath("/")+"files"+ File.separator+fileName;
        System.out.println(path);
        FileOutputStream fs = new FileOutputStream(path);
        fs.write(data);
        fs.close();
        System.out.println("File uploaded");



        return "fileSuccess";
    }

}
