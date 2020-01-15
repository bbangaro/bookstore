package com.bc.notcommand;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.bc.model.dao.NotDAO;

public class NotInsCommand implements Command{
	
	private static final String CHARSET = "utf-8";
	private static final String ATTACHES_DIR = "c:\\attaches";
	private static final int LIMIT_SIZE_BYTES = 1024 * 1024;
	
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		Map<String, String> map = new HashMap<>();
		
		map.put("subject",request.getParameter("subject"));
		map.put("content",request.getParameter("content"));
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding(CHARSET);
		PrintWriter out = response.getWriter();
		
		File attachesDir = new File(ATTACHES_DIR);
		DiskFileItemFactory fileitemfactory = new DiskFileItemFactory();
		fileitemfactory.setRepository(attachesDir);
		fileitemfactory.setSizeThreshold(LIMIT_SIZE_BYTES);
		ServletFileUpload fileUpload = new ServletFileUpload(fileitemfactory);
		String imlist = "";
		try {
			List<FileItem> items = fileUpload.parseRequest(request);
				for(FileItem item : items) {
					if(item.isFormField()) {
						System.out.printf("파라미터 명 : %s, 파라미터 값 : %s \n", item.getFieldName(), item.getString(CHARSET));
						map.put(item.getFieldName(), item.getString(CHARSET));
					} else {
						System.out.printf("파라미터 명 :  %s, 파일 명 : %s, 파일 크기 : %s bytes \n", item.getFieldName(),
								item.getName(),item.getSize());
						if(item.getSize() > 0) {
							String separator = File.separator;
							int index = item.getName().lastIndexOf(separator);
							String fileName = item.getName().substring(index + 1);
							File uploadFile = new File(ATTACHES_DIR + separator + fileName);
							item.write(uploadFile);
							imlist += item.getName()+",";
						}
					}
				}
				out.println("<h1>파일 업로드 완료</h1>");
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		
		 map.put("upload",imlist);
		
		
		
		System.out.println("map 객체"+map);
		int result = NotDAO.getInsert(map);
		
		
		
		return "NotListController";
	}

}
