package barbearia.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import barbearia.entity.Servico;
import barbearia.util.JPAUtil;

public class ServicoDAO {

	EntityManager manager;

	public ServicoDAO() {
		manager = new JPAUtil().getEntityManager();
	}
	
	public void save(Servico s) {
		manager.getTransaction().begin();
		manager.persist(s);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void update(Servico s) {
		manager.getTransaction().begin();
		manager.merge(s);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void delete(Servico s) {
		manager.getTransaction().begin();
		manager.remove(manager.find(s.getClass(), s.getId()));
		manager.getTransaction().commit();
		manager.close();
	}
	
	public Servico findById(Servico s) {
		manager.getTransaction().begin();
		Servico service = manager.find(s.getClass(), s.getId());
		manager.close();
		return service;
	}
	
	@SuppressWarnings("unchecked")
	public List<Servico> findByName(String nome) {
		manager.getTransaction().begin();
		Query query = manager
                .createQuery("select a from Servico a where a.login like :pName");
		query.setParameter("pName", "%" + nome + "%");
		List<Servico> servicos = query.getResultList();
		manager.close();
		return servicos;
	}
	
	@SuppressWarnings("unchecked")
	public List<Servico> findAll() {
		manager.getTransaction().begin();
		Query query = manager
                .createQuery("select s from Servico s");
		List<Servico> servicos = query.getResultList();
		manager.close();
		return servicos;
	}
}
