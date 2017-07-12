package barbearia.util;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

public class UploadImagem {
	public static String save(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");

		final String path = request.getServletContext().getRealPath("resources") + File.separator + "image";
		final Part filePart = request.getPart("foto");
		final String fileName = UUID.randomUUID().toString().replace("-", "") + ".jpg";
		OutputStream out = null;
		InputStream filecontent = null;

		try {
			out = new FileOutputStream(new File(path + File.separator + fileName));
			filecontent = filePart.getInputStream();

			int read = 0;
			final byte[] bytes = new byte[1024];

			while ((read = filecontent.read(bytes)) != -1) {
				out.write(bytes, 0, read);
			}
		} catch (FileNotFoundException fne) {
			fne.printStackTrace();
			System.out.println(fne.getMessage());
		} finally {
			if (out != null) {
				out.close();
			}
			if (filecontent != null) {
				filecontent.close();
			}
		}
		return fileName;
	}
}
