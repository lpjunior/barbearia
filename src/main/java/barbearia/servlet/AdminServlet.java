package barbearia.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import barbearia.entity.Administrador;
import barbearia.service.AdministradorService;


@WebServlet({ "/admin", "/login", "/logout", "/atualizarsenha", "/testeform"})
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdminServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getServletPath().equals("/admin"))
			request.getRequestDispatcher("admin.html").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getServletPath().equals("/login")){
			String login = request.getParameter("login");
			String senha = request.getParameter("senha");
			
			HttpSession session = request.getSession();
			if(new AdministradorService().buscaLogin(new Administrador(login, senha)) != null) {
				session.setAttribute("usuario", new AdministradorService().buscaLogin(new Administrador(login, senha)));
				request.getRequestDispatcher("sistema.jsp").forward(request, response);
			} else {
				request.getRequestDispatcher("403.html").forward(request, response);
			}
		} else if(request.getServletPath().equals("/login")){
			
		}
	}

}
