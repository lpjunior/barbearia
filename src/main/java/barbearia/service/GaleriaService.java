package barbearia.service;

import java.io.Serializable;
import java.util.List;

import barbearia.entity.Galeria;
import barbearia.persistence.GaleriaDAO;

public class GaleriaService implements Serializable {

	private static final long serialVersionUID = 1L;

	private GaleriaDAO dao;

	public GaleriaService() {
		dao = new GaleriaDAO();
	}

	public boolean save(Galeria g) {
		dao.save(g);
		return Boolean.TRUE;
	}
	
	public boolean update(Galeria g) {
		dao.update(g);
		return Boolean.TRUE;
	}
	
	public boolean delete(Galeria g) {
		dao.delete(g);
		return Boolean.TRUE;
	}

	public Galeria buscaId(Galeria g) {
		return dao.findById(g);
	}
	
	public List<Galeria> busca() {
		return dao.findAll();
	}
}
