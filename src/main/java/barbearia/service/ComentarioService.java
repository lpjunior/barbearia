package barbearia.service;

import java.io.Serializable;
import java.util.List;

import barbearia.entity.Comentario;
import barbearia.persistence.ComentarioDAO;

public class ComentarioService implements Serializable {

	private static final long serialVersionUID = 1L;

	private ComentarioDAO dao;

	public ComentarioService() {
		dao = new ComentarioDAO();
	}

	public boolean save(Comentario c) {
		dao.save(c);
		return Boolean.TRUE;
	}
	
	public boolean update(Comentario c) {
		dao.update(c);
		return Boolean.TRUE;
	}
	
	public boolean delete(Comentario c) {
		dao.delete(c);
		return Boolean.TRUE;
	}

	public Comentario buscaId(Comentario c) {
		return dao.findById(c);
	}
	
	public List<Comentario> buscaNome(String nome) {
		return dao.findByName(nome);
	}
	
	public List<Comentario> busca() {
		return dao.findAll();
	}
	
	public List<Comentario> buscaAtivos() {
		return dao.findAtivo();
	}
}
