package barbearia.test;

import barbearia.entity.Administrador;
import barbearia.persistence.AdministradorDAO;
import barbearia.persistence.ComentarioDAO;
import barbearia.service.AdministradorService;

@SuppressWarnings("unused")
public class PopulaConta {

	public static void main(String[] args) {

		Administrador admin1 = new Administrador();
		Administrador admin2 = new Administrador();
		Administrador admin3 = new Administrador();

//		admin1.setId(1);
		admin1.setLogin("luispaulojr");
		admin1.setSenha("123");
		
//		admin2.setLogin("lpjr");
//		admin2.setSenha("123");

//		admin3.setLogin("lpjunior");
//		admin3.setSenha("123");
		AdministradorService as = new AdministradorService();
//		admin = as.busca(Administrador.class, admin.getId());
//		as.save(admin1);
//		as.save(admin2);
//		as.save(admin3);
//		System.out.println(admin1.getLogin());
		System.out.println(as.buscaLogin(admin1));
//		System.out.println(as.buscaId(admin1));
//		new AdministradorDAO().findAll().forEach(System.out::println);
//		new ComentarioDAO().findAtivo().forEach(System.out::println);
	}
}
