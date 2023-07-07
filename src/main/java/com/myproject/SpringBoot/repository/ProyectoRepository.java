package com.myproject.SpringBoot.repository;

import com.myproject.SpringBoot.model.Proyectos;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProyectoRepository extends JpaRepository<Proyectos, Long>{
 
}
