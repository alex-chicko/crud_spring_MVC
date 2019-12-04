    /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import dao.DaoTr;
import java.util.List;
import model.Trainer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author ALEX
 */
@Controller
@RequestMapping(value="trainer")
public class TrainerController {
    
    @Autowired //ftiaxnei mono tou to spring to dao pou exoume ftiaksei
    DaoTr dao;
    
    
    @RequestMapping(value="insertForm.htm",method = RequestMethod.GET)
    public String insertFormTrainer(ModelMap m ){
        
        Trainer tr = new Trainer(); //ftiaxnoume enan adeio trainer
        m.addAttribute("emptyTr", tr);
        return "form";
    }
    
    @RequestMapping(value="insert.htm", method = RequestMethod.POST)
    public String insertTrainer(@ModelAttribute("emptyTr") Trainer tr ){
    dao.insert(tr);
    return "redirect:/trainer/showtrainers.htm";
    }
    
    @RequestMapping(value="showtrainers.htm", method = RequestMethod.GET)
    public String tableTrainer(ModelMap m){
        
        List<Trainer> trainers = dao.getTrainer();
        m.addAttribute("tableTr", trainers);
        
        return "table";
       }
    @RequestMapping(value="removetrainer.htm", method = RequestMethod.GET)
    public String removeTrainer(@RequestParam("id") int trId, ModelMap m){
       
        dao.deleteTrainer(trId);
        
//        tableTrainer(m);// trexv thn methodo edv mesa
        return "forward:/trainer/showtrainers.htm";
    }
    
    @RequestMapping(value="findtrainerup.htm", method=RequestMethod.GET)
    public String findUpTr(@RequestParam("id") int trId,ModelMap m){
        Trainer trainer = dao.findTrainer(trId);
        m.addAttribute("fullTrainer", trainer);// dinoume ena gemato object sthn forma
        
        
        return "updateform";
    }
    
    @RequestMapping(value="updatetrainer.htm", method=RequestMethod.POST)
    public String updateTr(@ModelAttribute("fullTr") Trainer tr){//paizei kai san fullTr kai san fullTrainer!!!!!!!
        dao.updateTrainer(tr);
        
        return "redirect:/trainer/showtrainers.htm";// to redirect to xrisimophoume stis methodous POST kai to forward stis GET
    }
    
}
