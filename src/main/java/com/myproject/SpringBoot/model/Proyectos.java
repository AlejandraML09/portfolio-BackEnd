
package com.myproject.SpringBoot.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
public class Proyectos {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nombre_proyecto;
    private String descripcion;
    private Date fecha_inicio;
    private Date fecha_final;
    private String url;

    public Proyectos() {
    }

    public Proyectos(String nombre_proyecto, String descripcion, Date fecha_inicio, Date fecha_final, String url) {
        this.nombre_proyecto = nombre_proyecto;
        this.descripcion = descripcion;
        this.fecha_inicio = fecha_inicio;
        this.fecha_final = fecha_final;
        this.url = url;
    }

}
