package com.myproject.SpringBoot.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
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
    @Column(columnDefinition="TEXT")
    private String sobre_mi;
    private String ocupacion;
    @OneToMany(cascade = CascadeType.ALL)
    private List<Educacion> educaciones;
    @OneToMany(cascade = CascadeType.ALL)
    private List<Experiencia> experiencias;
    private String banner_image;
    private String profile_picture;
    private String contacto;
    private String username;
    @JsonIgnore
    private String password;
    
    

    public Persona() {}

    public Persona(String nombre, String apellido, Date fecha_nacimiento, String nacionalidad, String email, String sobre_mi, String ocupacion, List<Educacion> educaciones, List<Experiencia> experiencias, String banner_image, String profile_picture, String contacto, String username, String password) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.fecha_nacimiento = fecha_nacimiento;
        this.nacionalidad = nacionalidad;
        this.email = email;
        this.sobre_mi = sobre_mi;
        this.ocupacion = ocupacion;
        this.educaciones = educaciones;
        this.experiencias = experiencias;
        this.banner_image = banner_image;
        this.profile_picture = profile_picture;
        this.contacto = contacto;
        this.username = username;
        this.password = password;
    }
}
