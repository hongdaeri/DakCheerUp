package com.fourdrone.dakcheerup.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Iterator;
import java.util.Set;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.fourdrone.dakcheerup.domain.UploadFile;
import com.fourdrone.dakcheerup.domain.member.Member;
import com.fourdrone.dakcheerup.domain.resume.Brother;
import com.fourdrone.dakcheerup.domain.resume.Family;
import com.fourdrone.dakcheerup.domain.resume.Military;
import com.fourdrone.dakcheerup.service.AccountService;
import com.fourdrone.dakcheerup.service.ResumeService;

@Controller
@RequestMapping("/photo")

public class PhotoController {
	
	@Autowired  private AccountService accountService;
	@Autowired private HttpSession session;
	
	
	//사진 등록 및 크기조절
	@RequestMapping(method = RequestMethod.GET)
	public String getPhoto(ModelMap model) {
		System.out.println("d");
		return "photo/photo";
	}
	
	
	//임시사진 저장.
	@RequestMapping(value="/tempSave", method = RequestMethod.POST)
	public String postPhotoTempSave(ModelMap model, MultipartHttpServletRequest mRequest) {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		String fileName = memberId + "_temp";
		
		UploadFile uploadFile = this.fileUpload(mRequest, memberId, fileName);
		
		if(uploadFile.isSuccess()) {

			System.out.println("result : " + "SUCCESS");
			System.out.println("fileName : " + uploadFile.getFileName());
			System.out.println("filePath : " + uploadFile.getFilePath());

		} else {

			System.out.println("result : " + "FAIL");

		}
		
		model.addAttribute("isFile", uploadFile.isSuccess());
		model.addAttribute("fileName", uploadFile.getFileName());
		model.addAttribute("filePath", uploadFile.getFilePath());
		
		System.out.println(uploadFile.getFilePath() + uploadFile.getFileName());
		
		Member member = this.accountService.getMember(memberId);
		member.setMemberPhoto(uploadFile.getFilePath() + uploadFile.getFileName());
		this.accountService.modPhoto(member);
		
		return "redirect:/account/modify";
	}
	
	//임시사진 저장.
	@RequestMapping(value="/cropper", method = RequestMethod.POST)
	public String postCropper(ModelMap model, HttpServletRequest request) throws IOException {
		String memberId = (String)session.getAttribute("memberLoginInfo");
		//Get all the parameters which were populated by JCrop
	    double dx=Double.parseDouble(request.getParameter("x"));
	    double dy=Double.parseDouble(request.getParameter("y"));
	    double dw=Double.parseDouble(request.getParameter("w"));
	    double dh=Double.parseDouble(request.getParameter("h"));
	    
	    int x = (int) dx;
	    int y = (int) dy;
	    int w = (int) dw;
	    int h = (int) dh;
	 

        String image = request.getParameter("imageName");
        System.out.println("imageName"+image);

        String sourcePath =   "/resources/img/";
        String serverPath = sourcePath + "default_profile.png";
        serverPath = serverPath.replace("\\", "/");
        System.out.println(serverPath);

        BufferedImage bi = ImageIO.read(new File(serverPath));

        BufferedImage out = bi.getSubimage(x, y, w, h);

        ImageIO.write(out,"png",new File(sourcePath + "2" +  image));

        System.out.println("croppedImage" +  image);

        
	    
		return "photo/photo";
	}
	
	
	public UploadFile fileUpload(MultipartHttpServletRequest mRequest, String memberId, String fileName) {

		UploadFile uploadFile = new UploadFile();
		boolean isSuccess = false;
		//String uploadPath = "/Users/h0ngz/Pictures/" + memberId +"/";
		String projectPath = mRequest.getSession().getServletContext().getRealPath("/resources/upload-img/");
		String uploadPath= projectPath + memberId + "/";
		File dir = new File(uploadPath);

		if (!dir.isDirectory()) 
		{
			dir.mkdirs();
		}

		Iterator<String> iter = mRequest.getFileNames();

		while(iter.hasNext()) 
		{
			String uploadFileName = iter.next();
			MultipartFile mFile = mRequest.getFile(uploadFileName);
			String originalFileName = mFile.getOriginalFilename();
			String saveFileName = fileName + "_" + originalFileName;

			if(saveFileName != null && !saveFileName.equals("")) 
			{
				if(new File(uploadPath + saveFileName).exists())
				{
					saveFileName = System.currentTimeMillis() + "_" + saveFileName;
				}
				try 
				{
					mFile.transferTo(new File(uploadPath + saveFileName));
					isSuccess = true;	
					uploadFile.setFileName(saveFileName);
					uploadFile.setFilePath(uploadPath);

				} 
				catch (IllegalStateException e) 
				{
					e.printStackTrace();
					isSuccess = false;

				} 
				catch (IOException e) 
				{
					e.printStackTrace();
					isSuccess = false;

				}
			} // if end
		} // while end
		
		uploadFile.setSuccess(isSuccess);
		return uploadFile;
	} // fileUpload end
}