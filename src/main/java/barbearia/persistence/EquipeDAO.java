package barbearia.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import barbearia.entity.Equipe;
import barbearia.util.JPAUtil;

public class EquipeDAO {

	EntityManager manager;

	public EquipeDAO() {
		manager = new JPAUtil().getEntityManager();
	}

	public void save(Equipe e) {
		manager.getTransaction().begin();
		manager.persist(e);
		manager.getTransaction().commit();
		manager.close();
	}

	public void update(Equipe e) {
		manager.getTransaction().begin();
		manager.merge(e);
		manager.getTransaction().commit();
		manager.close();
	}

	public void delete(Equipe e) {
		manager.getTransaction().begin();
		manager.remove(manager.find(e.getClass(), e.getId()));
		manager.getTransaction().commit();
		manager.close();
	}

	public Equipe findById(Equipe e) {
		manager.getTransaction().begin();
		Equipe funcionario = manager.find(e.getClass(), e.getId());
		manager.close();
		return funcionario;
	}

	@SuppressWarnings("unchecked")
	public List<Equipe> findByName(String nome) {
		manager.getTransaction().begin();
		Query query = manager.createQuery("select e from Equipe e where e.nome like :pName");
		query.setParameter("pName", "%" + nome + "%");
		List<Equipe> funcionarios = query.getResultList();
		manager.close();
		return funcionarios;
	}

	@SuppressWarnings("unchecked")
	public List<Equipe> findAll() {
		manager.getTransaction().begin();
		Query query = manager.createQuery("select e from Equipe e");
		List<Equipe> funcionarios = query.getResultList();
		manager.close();
		return funcionarios;
	}
}
