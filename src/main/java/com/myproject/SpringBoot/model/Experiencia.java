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


public class Experiencia {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private Long id;
    @ManyToOne
    private Persona persona;
    private String compania;
    private String puesto;
    private String jornada;
    private Date inicio;
    private Date fin;
    private String puesto_image;
    private String puesto_url;

    public Experiencia() {
    }

    public Experiencia(Persona persona, String compania, String puesto, String jornada, Date inicio, Date fin) {
        this.persona = persona;
        this.compania = compania;
        this.puesto = puesto;
        this.jornada = jornada;
        this.inicio = inicio;
        this.fin = fin;
        this.puesto_image = puesto_image;
        this.puesto_url = puesto_url;
    }


    
}
