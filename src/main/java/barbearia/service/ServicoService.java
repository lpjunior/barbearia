package barbearia.service;

import java.io.Serializable;
import java.util.List;

import barbearia.entity.Servico;
import barbearia.persistence.ServicoDAO;

public class ServicoService implements Serializable {

	private static final long serialVersionUID = 1L;

	private ServicoDAO dao;

	public ServicoService() {
		dao = new ServicoDAO();
	}

	public boolean save(Servico s) {
		dao.save(s);
		return Boolean.TRUE;
	}
	
	public boolean update(Servico s) {
		dao.update(s);
		return Boolean.TRUE;
	}
	
	public boolean delete(Servico s) {
		dao.delete(s);
		return Boolean.TRUE;
	}

	public Servico buscaId(Servico s) {
		return dao.findById(s);
	}
	
	public List<Servico> buscaNome(String nome) {
		return dao.findByName(nome);
	}
	
	public List<Servico> busca() {
		return dao.findAll();
	}
}
