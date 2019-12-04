/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import model.Trainer;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ALEX
 */
@Repository // sta DAO grafoume papaki repository kai episis prepei na valoume ston dispatcher.xml na to skanarei me liga logia oi klaseis pou milane me thn vasi
public class DaoTr {
    
    
    //Injected database connection:
    @PersistenceContext
    private EntityManager em;
    
    
    @Transactional 
    public void insert(Trainer tr){
        em.persist(tr);
    }
    
  
    public List<Trainer> getTrainer(){
    
       List<Trainer> trainers = em.createNamedQuery("Trainer.findAll",Trainer.class).getResultList();
       
       return trainers;
    
}   
    @Transactional
   public void deleteTrainer(int id){
       Trainer trainer=em.find(Trainer.class, id);
       em.remove(trainer);
       
   }
   
   public Trainer findTrainer(int id){
       Trainer trainer = em.find(Trainer.class, id);
       return trainer;
   }
   
   
   @Transactional
   public void updateTrainer(Trainer tr){
       em.merge(tr);
   }
}
