package barbearia.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import barbearia.service.ComentarioService;
import barbearia.service.EquipeService;
import barbearia.service.GaleriaService;
import barbearia.service.ServicoService;

@WebServlet("/home")
public class AppServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* Carrega as listas no contexto da requisição */
		request.setAttribute("equipe", new EquipeService().busca());
		request.setAttribute("galeria", new GaleriaService().busca());
		request.setAttribute("servicos", new ServicoService().busca());
		request.setAttribute("comentarios", new ComentarioService().busca());
		
		/* Redireciona para a home.jsp com as listas carregadas */
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
