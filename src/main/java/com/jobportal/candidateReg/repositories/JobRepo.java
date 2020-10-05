package com.jobportal.candidateReg.repositories;

import com.jobportal.candidateReg.models.Job;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

public interface JobRepo extends JpaRepository<Job, Integer> {

    List<Job> findByTitle(String jobName);

    @Transactional
    @Modifying
    @Query(value="update job  j set j.title=:givenTitle,j.details=:givenDetails,j.req_experience=:givenExp,j.date_of_interview=:givenDoi where j.job_id=:givenId",nativeQuery = true)
    void findAndUpdate(@Param("givenTitle") String givenTitle, @Param("givenDetails") String givenDetails, @Param("givenExp") int givenExp,@Param("givenDoi") Date doi, @Param("givenId") int givenId);


    List<Job> findByOrderByTitle();


    @Query(value="select * from job j order by j.req_experience",nativeQuery = true)
    List<Job> findByOrderByReqExp();

    @Query(value="select * from job j order by j.date_of_interview",nativeQuery = true)
    List<Job> findByOrderByDoi();

}
