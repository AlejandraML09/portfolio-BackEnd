package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Experiencia;
import com.myproject.SpringBoot.model.Persona;
import com.myproject.SpringBoot.repository.PersonaRepository;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PersonaService implements IPersonaService {

    @Autowired
    public PersonaRepository persoRepo;

    @Override
    public List<Persona> listarPersonas() {
        return persoRepo.findAll();
    }

    @Override
    public void crearPersona(Persona per) {
        persoRepo.save(per);
    }
    
    @Override
    public void borrarPersona(Long id) {
        persoRepo.deleteById(id);
    }

    @Override
    public Persona buscarPersona(Long id) {
        return persoRepo.findById(id).orElse(null);
    }

    @Override
    public Persona editarPersona(Persona per) {
        Persona personaPersistida = this.buscarPersona(per.getId());
        if (per.getPassword() == null && personaPersistida != null && personaPersistida.getPassword() != null){
           per.setPassword(personaPersistida.getPassword());
        }
        return persoRepo.save(per);
    }

    @Override
    public Persona buscarPersonaPorUsername(String username) {
        return persoRepo.findByUsername(username);
    }

    @Override
    public void guardarPersona(Persona pers) {
       persoRepo.save(pers);
       
    }
}
