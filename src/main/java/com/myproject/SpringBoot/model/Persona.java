package com.myproject.SpringBoot.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import java.util.Date;
import java.util.List;
import lombok.Getter;
import lombok.Setter;


@Getter
@Setter
@Entity

public class Persona {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nombre;
    private String apellido;
    private Date fecha_nacimiento;
    private String nacionalidad;
    private String email;
    private String sobre_mi;
    private String ocupacion;
    @OneToMany(cascade = CascadeType.ALL)
    private List<Educacion> educaciones;
    

    public Persona() {}

    public Persona(String nombre, String apellido, Date fecha_nacimiento, String nacionalidad, String email, String sobre_mi, String ocupacion) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.nacionalidad = nacionalidad;
        this.email = email;
        this.sobre_mi = sobre_mi;
        this.ocupacion = ocupacion;
    }
    

}
