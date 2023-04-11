package com.myproject.SpringBoot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity

public class Educacion {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    @ManyToOne
    private Persona persona;
    private String escuela;
    private String titulo;
    private String carrera;
    private Integer puntaje;
    private Date inicio;
    private Date fin;

    public Educacion() {
    }

    public Educacion(Persona persona, String escuela, String titulo, String carrera, Integer puntaje, Date inicio, Date fin) {
        this.persona = persona;
        this.escuela = escuela;
        this.titulo = titulo;
        this.carrera = carrera;
        this.puntaje = puntaje;
        this.inicio = inicio;
        this.fin = fin;
    }
}
