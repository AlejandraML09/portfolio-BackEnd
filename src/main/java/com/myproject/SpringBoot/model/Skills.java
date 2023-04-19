
package com.myproject.SpringBoot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;



@Getter
@Setter
@Entity

public class Skills {
   @Id
   @GeneratedValue (strategy = GenerationType.AUTO)
   private Long id;
   private String lenguaje;
   private String porcentaje_de_conocimiento;
   private String progreso;

   
   public Skills() {
        
   }
   
   
   public Skills(String lenguaje, String porcentaje_de_conocimiento) {
        this.lenguaje = lenguaje;
        this.porcentaje_de_conocimiento = porcentaje_de_conocimiento;
        this.progreso = progreso;
    }
   
   
}
