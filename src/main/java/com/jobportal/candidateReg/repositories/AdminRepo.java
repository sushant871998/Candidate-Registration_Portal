package com.jobportal.candidateReg.repositories;

import com.jobportal.candidateReg.models.Admin;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AdminRepo extends JpaRepository<Admin,String> {
}
