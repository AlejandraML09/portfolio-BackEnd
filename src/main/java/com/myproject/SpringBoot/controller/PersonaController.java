package com.myproject.SpringBoot.controller;

import com.myproject.SpringBoot.model.Educacion;
import com.myproject.SpringBoot.model.Experiencia;
import com.myproject.SpringBoot.model.Persona;
import com.myproject.SpringBoot.model.Proyectos;
import com.myproject.SpringBoot.model.Skills;
import com.myproject.SpringBoot.service.ExperienciaService;
import com.myproject.SpringBoot.service.EducacionService;
import com.myproject.SpringBoot.service.IPersonaService;
import com.myproject.SpringBoot.service.ProyectoService;
import com.myproject.SpringBoot.service.SkillService;

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

    @Autowired
    private ExperienciaService expServ;

    @Autowired
    private EducacionService eduServ;
    
    @Autowired
    private SkillService skillServ;
    
    @Autowired
    private ProyectoService proServ;
    
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

    @PostMapping("/{id}/experiencia")
    public void agregarExperiencia(@PathVariable Long id, @RequestBody Experiencia exp) {
        Persona pers = persoServ.buscarPersona(id);
        if (pers != null) {
            expServ.agregarExperiencia(exp);
            List<Experiencia> experiencias = pers.getExperiencias();
            experiencias.add(exp);
            pers.setExperiencias(experiencias);
            persoServ.guardarPersona(pers);
        }

    }

    @DeleteMapping("/{userId}/experiencia/{experienciaId}")
    public void eliminarExperiencia(@PathVariable Long userId, @PathVariable Long experienciaId) {
        Persona pers = persoServ.buscarPersona(userId);
        if (pers != null) {
            List<Experiencia> experiencias = pers.getExperiencias();
            experiencias.removeIf(e -> e.getId().equals(experienciaId));
            pers.setExperiencias(experiencias);
            persoServ.guardarPersona(pers);
            expServ.eliminarExperiencia(experienciaId);

        }

    }

    @PostMapping("/{id}/educacion")
    public void agregarEducacion(@PathVariable Long id, @RequestBody Educacion edu) {
        Persona pers = persoServ.buscarPersona(id);
        if (pers != null) {
            eduServ.agregarEducacion(edu);
            List<Educacion> educaciones = pers.getEducaciones();
            educaciones.add(edu);
            pers.setEducaciones(educaciones);
            persoServ.guardarPersona(pers);
        }

    }

    @DeleteMapping("/{userId}/educacion/{educacionId}")
    public void eliminarEducacion(@PathVariable Long userId, @PathVariable Long educacionId) {
        Persona pers = persoServ.buscarPersona(userId);
        if (pers != null) {
            List<Educacion> educaciones = pers.getEducaciones();
            educaciones.removeIf(e -> e.getId().equals(educacionId));
            pers.setEducaciones(educaciones);
            persoServ.guardarPersona(pers);
            eduServ.eliminarEducacion(educacionId);

        }

    }
    
    
       @PostMapping("/{id}/skill")
    public void agregarSkill(@PathVariable Long id, @RequestBody Skills skill) {
        Persona pers = persoServ.buscarPersona(id);
        if (pers != null) {
            skillServ.agregarSkill(skill);
            List<Skills> skills = pers.getSkills();
            skills.add(skill);
            pers.setSkills(skills);
            persoServ.guardarPersona(pers);
        }

    }
    
     @DeleteMapping("/{userId}/skill/{skillId}")
    public void eliminarSkill (@PathVariable Long userId, @PathVariable Long skillId) {
        Persona pers = persoServ.buscarPersona(userId);
        if (pers != null) {
            List<Skills> skills = pers.getSkills();
            skills.removeIf(e -> e.getId().equals(skillId));
            pers.setSkills(skills);
            persoServ.guardarPersona(pers);
            skillServ.eliminarSkill(skillId);

        }

    }
    
         @PostMapping("/{id}/proyecto")
    public void agregarSkill(@PathVariable Long id, @RequestBody Proyectos proyecto) {
        Persona pers = persoServ.buscarPersona(id);
        if (pers != null) {
            proServ.agregarProyecto(proyecto);
            List<Proyectos> proyectos = pers.getProyectos();
            proyectos.add(proyecto);
            pers.setProyectos(proyectos);
            persoServ.guardarPersona(pers);
        }

    }
    
       @DeleteMapping("/{userId}/proyecto/{proyectoId}")
        public void eliminarProyecto (@PathVariable Long userId, @PathVariable Long proyectoId) {
        Persona pers = persoServ.buscarPersona(userId);
        if (pers != null) {
            List<Proyectos> proyectos = pers.getProyectos();
            proyectos.removeIf(e -> e.getId().equals(proyectoId));
            pers.setProyectos(proyectos);
            persoServ.guardarPersona(pers);
            proServ.eliminarProyecto(proyectoId);

        }

    }
    

}
