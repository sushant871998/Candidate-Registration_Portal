package com.jobportal.candidateReg.repositories;

import com.jobportal.candidateReg.models.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CandidateRepo extends JpaRepository<Candidate,String> {
}
