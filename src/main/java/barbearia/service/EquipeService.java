package barbearia.service;

import java.io.Serializable;
import java.util.List;

import barbearia.entity.Equipe;
import barbearia.persistence.EquipeDAO;

public class EquipeService implements Serializable {

	private static final long serialVersionUID = 1L;

	private EquipeDAO dao;

	public EquipeService() {
		dao = new EquipeDAO();
	}

	public boolean save(Equipe e) {
		dao.save(e);
		return Boolean.TRUE;
	}
	
	public boolean update(Equipe e) {
		dao.update(e);
		return Boolean.TRUE;
	}
	
	public boolean delete(Equipe e) {
		dao.delete(e);
		return Boolean.TRUE;
	}

	public Equipe buscaId(Equipe e) {
		return dao.findById(e);
	}
	
	public List<Equipe> buscaNome(String nome) {
		return dao.findByName(nome);
	}
	
	public List<Equipe> busca() {
		return dao.findAll();
	}
}
