package barbearia.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "comentario")
public class Comentario implements Serializable {

	@Transient
	private static final long serialVersionUID = 7918227260120583363L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	@Column(nullable = false, length = 120)
	private String nome;
	@Column(nullable = false)
	private String comentario;
	@Column(nullable = false)
	private String bairro;
	@Column(nullable = false, columnDefinition = "bit default 0")
	private boolean ativo;
	@Column(nullable = false)
	private int nota;

	public Comentario() {
		// TODO Auto-generated constructor stub
	}

	public Comentario(Integer id, String nome, String comentario, String bairro, boolean ativo, int nota) {
		this.id = id;
		this.nome = nome;
		this.comentario = comentario;
		this.bairro = bairro;
		this.ativo = ativo;
		this.nota = nota;
	}

	@Override
	public String toString() {
		return "Comentario [id=" + id + ", nome=" + nome + ", comentario=" + comentario + ", bairro=" + bairro
				+ ", ativo=" + ativo + ", nota=" + nota + "]";
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getComentario() {
		return comentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public int getNota() {
		return nota;
	}

	public void setNota(int nota) {
		this.nota = nota;
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
		Comentario other = (Comentario) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		return true;
	}
}
