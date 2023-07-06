package com.myproject.SpringBoot.repository;

import org.springframework.stereotype.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import com.myproject.SpringBoot.model.Educacion;

@Repository
public interface EducacionRepository extends JpaRepository<Educacion, Long> {
}
