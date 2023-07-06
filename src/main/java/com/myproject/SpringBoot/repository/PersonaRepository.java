
package com.myproject.SpringBoot.repository;

import com.myproject.SpringBoot.model.Persona;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;



@Repository
public interface PersonaRepository extends JpaRepository<Persona, Long> {
    @Query("SELECT u FROM Persona u WHERE u.username = :username")
    Persona findByUsername(String username);
     @Query("SELECT u FROM Persona u WHERE u.username = 'ale'")
    Persona findAle();
  
}
