/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.myproject.SpringBoot.service;

import com.myproject.SpringBoot.model.Proyectos;
import com.myproject.SpringBoot.repository.ProyectoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProyectoService {
@Autowired
public ProyectoRepository proRepo;
   public void agregarProyecto(Proyectos pro) {
       proRepo.save(pro);
   }
   public void eliminarProyecto(Long proyectoId) {
       proRepo.deleteById(proyectoId);
   }
}
