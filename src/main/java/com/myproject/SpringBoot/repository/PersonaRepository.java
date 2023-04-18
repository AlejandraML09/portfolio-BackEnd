
package com.myproject.SpringBoot.repository;

import com.myproject.SpringBoot.model.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface PersonaRepository extends JpaRepository<Persona, Long> {
    Persona findByUsername(String username);
    
}
