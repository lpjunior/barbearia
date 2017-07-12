package barbearia.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import barbearia.entity.Administrador;
import barbearia.util.EncriptarMD5;
import barbearia.util.JPAUtil;

public class AdministradorDAO {

	EntityManager manager;

	public AdministradorDAO() {
		manager = new JPAUtil().getEntityManager();
	}
	
	public void save(Administrador a) {
		a.setSenha(EncriptarMD5.encriptar(a.getSenha()));
		manager.getTransaction().begin();
		manager.persist(a);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void update(Administrador a) {
		manager.getTransaction().begin();
		manager.merge(a);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void delete(Administrador a) {
		manager.getTransaction().begin();
		manager.remove(manager.find(a.getClass(), a.getId()));
		manager.getTransaction().commit();
		manager.close();
	}
	
	public Administrador findById(Administrador a) {
		manager.getTransaction().begin();
		Administrador administrador = manager.find(Administrador.class, a.getId());
		administrador.setSenha(null);
		manager.close();
		return administrador;
	}
	
	public Administrador findByLogin(Administrador a) {
		manager.getTransaction().begin();
		Query query = manager
                .createQuery("select a from Administrador a where a.login like :pLogin and a.senha = :pSenha");
		query.setParameter("pLogin", a.getLogin());
		query.setParameter("pSenha", EncriptarMD5.encriptar(a.getSenha()));
		Administrador administrador = (Administrador) query.getSingleResult();
		administrador.setSenha(null);
		manager.close();
		return administrador;
	}
	
	@SuppressWarnings("unchecked")
	public List<Administrador> findAll() {
		manager.getTransaction().begin();
		Query query = manager
                .createQuery("select a from Administrador a");
		List<Administrador> administradores = query.getResultList();
		manager.close();
		return administradores;
	}
}
