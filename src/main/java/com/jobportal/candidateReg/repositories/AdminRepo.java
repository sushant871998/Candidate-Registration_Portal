package com.jobportal.candidateReg.repositories;

import com.jobportal.candidateReg.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface AdminRepo extends JpaRepository<Admin,String> {

    @Query(value="select * from admin where username=:user and pass=:pass",nativeQuery = true)
    List<Admin> find(@Param("user") String userName, @Param("pass") String pass);
}
