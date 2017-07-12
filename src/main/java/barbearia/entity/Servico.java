package barbearia.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Servico implements Serializable {

	@Transient
	private static final long serialVersionUID = -2247409576320964886L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(nullable = false)
	private String imagem;
	@Column(nullable = false)
	private String descricao;
	@Column(nullable = false)
	private Double valor;

	public Servico() {
		// TODO Auto-generated constructor stub
	}

	public Servico(Integer id, String imagem, String descricao, Double valor) {
		this.id = id;
		this.imagem = imagem;
		this.descricao = descricao;
		this.valor = valor;
	}

	public Servico(String descricao, Double valor, String imagem) {
		this.imagem = imagem;
		this.descricao = descricao;
		this.valor = valor;
	}

	public Servico(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getImagem() {
		return imagem;
	}

	public void setImagem(String imagem) {
		this.imagem = imagem;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Double getValor() {
		return valor;
	}

	public void setValor(Double valor) {
		this.valor = valor;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Servico other = (Servico) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
