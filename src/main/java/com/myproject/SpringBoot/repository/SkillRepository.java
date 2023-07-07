
package com.myproject.SpringBoot.repository;

import com.myproject.SpringBoot.model.Skills;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface SkillRepository extends JpaRepository<Skills, Long> {

}
