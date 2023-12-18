package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@WebServlet("/file.f")
@MultipartConfig //<- MultiPart 처리는 CommonFileUpload 등 servlet 3.0 이상은 MultipartConfig만 있어도 됨
public class FileController extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part = req.getPart("andFile");
		System.out.println(part.getName()+" : "+part.getSize()+" : "+part.getContentType());
		InputStream fileContent = part.getInputStream();
		String uploadpath = "D:\\mid\\"+part.getSubmittedFileName();//저장 경로
		
		try(OutputStream out = new FileOutputStream(new File(uploadpath))){
			int read;
			final byte[] fileBytes = new byte[1024];
			while((read = fileContent.read(fileBytes)) != -1) {
				out.write(fileBytes, 0, read);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
