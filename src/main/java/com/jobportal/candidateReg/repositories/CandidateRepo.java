package com.jobportal.candidateReg.repositories;

import com.jobportal.candidateReg.models.Candidate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface CandidateRepo extends JpaRepository<Candidate,Integer> {
    Candidate  findByUniqueId(String uniqueid);

    @Query(value="select count(candidate_id) as count from candidate where job_id=:jobid",nativeQuery = true)
    int countCandidates(@Param("jobid") int jobId);
}
