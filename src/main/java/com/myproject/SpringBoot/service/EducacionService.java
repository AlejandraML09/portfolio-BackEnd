
package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Educacion;
import com.myproject.SpringBoot.repository.EducacionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EducacionService {
@Autowired
public EducacionRepository eduRepo;
        public void agregarEducacion (Educacion edu) {
        eduRepo.save(edu);
    }
    
    public void eliminarEducacion(Long educacionId) {
        eduRepo.deleteById(educacionId);
    }
}
