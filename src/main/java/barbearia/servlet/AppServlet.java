package barbearia.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		HttpSession session = request.getSession();
		
		if(session.getAttribute("equipe") == null) {
			session.setAttribute("equipe", new EquipeService().busca());
			session.setAttribute("galeria", new GaleriaService().busca());
			session.setAttribute("servicos", new ServicoService().busca());
			session.setAttribute("comentarios", new ComentarioService().buscaAtivos());
		}
		/* Redireciona para a home.jsp com as listas carregadas */
		request.getRequestDispatcher("home.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
