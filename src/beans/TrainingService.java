package beans;

import tables.Training;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;


@Stateless
public class TrainingService {
    @PersistenceContext
    EntityManager em;

    public List<Training> findAll() {
        return em.createNamedQuery("Training.findAll").getResultList();
    }

    public List<Training> findByType(int type) {
        return em.createNamedQuery("Training.findByType").setParameter("type", type).getResultList();
    }
}
