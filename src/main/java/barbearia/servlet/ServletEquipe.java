package barbearia.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import barbearia.util.UploadImagem;

@WebServlet("/equipe")
public class ServletEquipe extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServletEquipe() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("listar").equalsIgnoreCase("todos")) {
			response.getWriter().append("Listar todos");
		} else if(request.getParameter("listar").equalsIgnoreCase("ativos")) {
			response.getWriter().append("Listar ativos");
		} else if(request.getParameter("listar").equalsIgnoreCase("inativo")) {
			response.getWriter().append("Listar inativos");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("acao").equalsIgnoreCase("cadastrar")) {
			
			String nome = request.getParameter("nome");
			String descricao = request.getParameter("descricao");
			Integer tempo = Integer.parseInt(request.getParameter("tempo"));
			String foto = UploadImagem.send(request);
			
			response.getWriter().append(nome + "\n" + descricao + "\n" + tempo + "\n" + foto);
		}
	}

}
