package com.myproject.SpringBoot.controller;

import com.myproject.SpringBoot.model.Persona;
import com.myproject.SpringBoot.service.IPersonaService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/persona")
public class PersonaController {

    @Autowired
    private IPersonaService persoServ;

    @PostMapping
    public void agregarPersona(@RequestBody Persona pers) {
        persoServ.crearPersona(pers);
    }

    @GetMapping
    @ResponseBody
    public List<Persona> listarPersonas() {
        return persoServ.listarPersonas();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Persona> Persona(@PathVariable Long id) {
        Persona pers = persoServ.buscarPersona(id);
        if (pers == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok(pers);
        
        }
       
    }

    @DeleteMapping("/{id}")
    public void borrarPersona(@PathVariable Long id) {
        persoServ.borrarPersona(id);
    }
    
    @PutMapping("/{id}")
    public Persona editarPersona(@PathVariable Long id, @RequestBody Persona per) {
       per.setId(id);
       return persoServ.editarPersona(per);
    
    }

}
