package barbearia.persistence;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import barbearia.entity.Galeria;
import barbearia.util.JPAUtil;

public class GaleriaDAO {

	EntityManager manager;

	public GaleriaDAO() {
		manager = new JPAUtil().getEntityManager();
	}
	
	public void save(Galeria g) {
		manager.getTransaction().begin();
		manager.persist(g);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void update(Galeria g) {
		manager.getTransaction().begin();
		manager.merge(g);
		manager.getTransaction().commit();
		manager.close();
	}
	
	public void delete(Galeria g) {
		manager.getTransaction().begin();
		manager.remove(manager.find(g.getClass(), g.getId()));
		manager.getTransaction().commit();
		manager.close();
	}
	
	public Galeria findById(Galeria g) {
		manager.getTransaction().begin();
		Galeria galeria = manager.find(g.getClass(), g.getId());
		manager.close();
		return galeria;
	}
	
	@SuppressWarnings("unchecked")
	public List<Galeria> findAll() {
		manager.getTransaction().begin();
		Query query = manager
                .createQuery("select g from Galeria g");
		List<Galeria> galeria = query.getResultList();
		manager.close();
		return galeria;
	}
}
