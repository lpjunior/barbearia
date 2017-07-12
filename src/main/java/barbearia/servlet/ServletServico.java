package barbearia.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import barbearia.entity.Servico;
import barbearia.service.ServicoService;
import barbearia.util.UploadImagem;

@WebServlet({"/servico", "/del_s", "/edit_s", "/cadastrar_s"})
@MultipartConfig
public class ServletServico extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ServletServico() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equalsIgnoreCase("/servico")) {
			carregaLista(request, response);
		} else if (request.getServletPath().equalsIgnoreCase("/del_s")) {
			new ServicoService().delete(new Servico(Integer.parseInt(request.getParameter("id"))));
			carregaLista(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if (request.getServletPath().equalsIgnoreCase("/cadastrar_s")) {

			String desc_service = request.getParameter("desc_service");
			Double preco = Double.parseDouble(request.getParameter("preco"));
			String foto = UploadImagem.save(request, response);
			
			new ServicoService().save(new Servico(desc_service, preco, foto));
			response.sendRedirect("servico");
		}
	}
	
	private void carregaLista(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("servicos", new ServicoService().busca());
		request.getRequestDispatcher("servicos.jsp").forward(request, response);		
	}
}
