package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Experiencia;
import com.myproject.SpringBoot.repository.ExperienciaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ExperienciaService {
@Autowired
public ExperienciaRepository expRepo;
    public void agregarExperiencia(Experiencia exp) {
        expRepo.save(exp);
    }
    
    public void eliminarExperiencia(Long experienciaId) {
        expRepo.deleteById(experienciaId);
    }
}

