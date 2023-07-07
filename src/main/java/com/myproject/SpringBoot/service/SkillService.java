/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Skills;
import com.myproject.SpringBoot.repository.SkillRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class SkillService {    
@Autowired
public SkillRepository skRepo;
    public void agregarSkill(Skills skill) {
        skRepo.save(skill);
    }
    public void eliminarSkill(Long skillId) {
        skRepo.deleteById(skillId);
    }
    
}
