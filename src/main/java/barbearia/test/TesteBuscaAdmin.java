package barbearia.test;

import javax.persistence.EntityManager;

import barbearia.entity.Administrador;
import barbearia.util.JPAUtil;

public class TesteBuscaAdmin {

    public static void main(String[] args) {

        EntityManager em = new JPAUtil().getEntityManager();
        em.getTransaction().begin();

        Administrador admin = em.find(Administrador.class, 1);

        em.getTransaction().commit();
        em.close();
        
        System.out.println(admin.getLogin());
    }

}
