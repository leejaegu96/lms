package com.sumcofw.infra.common.util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.sumcofw.infra.common.constants.Constants;
import com.sumcofw.infra.modules.lecturer.Lecturer;


public class UtilUpload {

	public static void upload(MultipartFile multipartFile, String className, Lecturer dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0, 4) + "/" + nowString.substring(5, 7) + "/" + nowString.substring(8, 10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + pathModule + "/" + pathDate + "/";

		createPath(path);
		System.out.println("save PATH : " + path);

		multipartFile.transferTo(new File(path + uuidFileName));
        /*
         * dto.setLuPath(pathForView);
         * dto.setLuOriginalname(fileName);
         * dto.setLuUuidName(uuidFileName);
         * dto.setLuExt(ext);
         * dto.setLuSize(multipartFile.getSize());
         */

	}
	public static void uploadTeacher(MultipartFile multipartFile, String className, Lecturer dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + "teacher" + "/" + pathDate + "/";
		String pathForView = Constants.UPLOAD_PATH_PREFIX_FOR_VIEW + "/" + "teacher" + "/" + pathDate + "/";
		
		createPath(path);
		  
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setPath(pathForView);
		dto.setOriginalName(fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
	}

	public static void createPath(String path) {
		File uploadPath = new File(path);

		if (!uploadPath.exists()) {
			System.out.println("directory is doesn't exists !");
			uploadPath.mkdirs();
			System.out.println("create directory !");
		} else {
			// by pass
		}
	}
}