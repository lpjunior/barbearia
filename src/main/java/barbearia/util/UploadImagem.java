package barbearia.util;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class UploadImagem {
	public static String send(HttpServletRequest request)
			throws ServletException, IOException {
		String nomeImg = null;
		System.out.println("chegou aqui!!!");
		/* Identifica se o formulario é do tipo multipart/form-data */
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				/* Faz o parse do request */
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

				multiparts.forEach(System.out::println);
				/* Escreve a o arquivo na pasta img */
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						nomeImg = UUID.randomUUID().toString().replace("-", "") + ".jpg";
						item.write(new File(
								request.getServletContext().getRealPath("resources") + File.separator + nomeImg));
					}
				}

			} catch (Exception ex) {
				request.setAttribute("message", "Upload de arquivo falhou devido a " + ex);
				request.getRequestDispatcher("error.jsp").forward(request, null);
			}
		}

		return nomeImg;
	}
}
