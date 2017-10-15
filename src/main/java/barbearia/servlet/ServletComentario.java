package barbearia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import barbearia.entity.Comentario;
import barbearia.service.ComentarioService;

@WebServlet({ "/comentarios", "/addComentario", "/del_c", "/enabled_c", "/disabled_c" })
public class ServletComentario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletComentario() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equals("/comentarios")) {
			request.setAttribute("comentarios", new ComentarioService().busca());
			request.getRequestDispatcher("comentarios.jsp").forward(request, response);
		} else if (request.getServletPath().equals("/enabled_c")) {

			Comentario c = new Comentario();
			c.setId(Integer.parseInt(request.getParameter("id")));
			c.setAtivo(Boolean.TRUE);

			new ComentarioService().update(c);
		} else if (request.getServletPath().equals("/disabled_c")) {

			Comentario c = new Comentario();
			c.setId(Integer.parseInt(request.getParameter("id")));
			c.setAtivo(Boolean.FALSE);

			new ComentarioService().update(c);
		} else if (request.getServletPath().equals("/del_c")) {

			Comentario c = new Comentario();
			c.setId(Integer.parseInt(request.getParameter("id")));

			new ComentarioService().delete(c);
		}

		response.sendRedirect("comentarios");	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equals("/addComentario")) {

			Comentario c = new Comentario();
			c.setAtivo(Boolean.FALSE);
			c.setBairro(request.getParameter("bairro"));
			c.setComentario(request.getParameter("comentario"));
			c.setNome(request.getParameter("nome"));
			
			c.setNota(Integer.parseInt(request.getParameter("nota")));

			System.out.println(c);
			new ComentarioService().save(c);
		}
		response.sendRedirect("home#depoimentos");
	}
}
