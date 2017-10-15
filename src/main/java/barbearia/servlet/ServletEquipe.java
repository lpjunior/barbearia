package barbearia.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import barbearia.entity.Equipe;
import barbearia.service.EquipeService;
import barbearia.util.UploadImagem;

@WebServlet({"/equipe", "/del_e", "/edit_e", "/cadastrar_e"})
@MultipartConfig
public class ServletEquipe extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletEquipe() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equalsIgnoreCase("/equipe")) {
			carregaLista(request, response);
		} else if (request.getServletPath().equalsIgnoreCase("/del_e")) {
			new EquipeService().delete(new Equipe(Integer.parseInt(request.getParameter("id"))));
			carregaLista(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equalsIgnoreCase("/cadastrar_e")) {

			String nome = request.getParameter("nome");
			String descricao = request.getParameter("descricao");
			int tempo = Integer.parseInt(request.getParameter("tempo"));
			String foto = UploadImagem.save(request, response);
			
			new EquipeService().save(new Equipe(nome, descricao, foto, tempo));
		} else if (request.getServletPath().equalsIgnoreCase("/edit_e")) {

			Integer id = Integer.parseInt(request.getParameter("id"));
			String nome = request.getParameter("nome");
			String descricao = request.getParameter("descricao");
			int tempo = Integer.parseInt(request.getParameter("tempo"));
			String foto = UploadImagem.save(request, response);

			new EquipeService().update(new Equipe(id, nome, descricao, foto, tempo));
			
		}
		response.sendRedirect("equipe");
	}
	
	private void carregaLista(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("equipe", new EquipeService().busca());
		request.getRequestDispatcher("equipe.jsp").forward(request, response);		
	}
}
