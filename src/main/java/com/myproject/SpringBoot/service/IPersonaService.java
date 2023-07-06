
package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Persona;
import java.util.List;


public interface IPersonaService {
    public List<Persona> listarPersonas();
    public void crearPersona (Persona per);
    public void borrarPersona (Long id);
    public Persona buscarPersona (Long id);
    public Persona editarPersona (Persona per);
    public Persona buscarPersonaPorUsername(String username);
    public void guardarPersona(Persona pers);
}
