package com.jobportal.candidateReg.models;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Job {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="job_id", nullable = false, unique = true)
    int jobId;

    public Job() {
    }

    public Job(String title, String details, int req_experience, Date date_of_interview) {
        this.title = title;
        this.details = details;
        this.req_experience = req_experience;
        this.date_of_interview = date_of_interview;
    }

    @OneToMany(mappedBy = "jobId", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    Set<Candidate> candidates=new HashSet<Candidate>();
    public Set<Candidate> getCandidates() {
        return candidates;
    }

    public void setCandidates(Set<Candidate> candidates) {
        this.candidates = candidates;
    }

    String title;
    String details;
    int req_experience;
    Date date_of_interview;

    public int getJobId() {
        return jobId;
    }

    public void setJobId(int jobId) {
        this.jobId = jobId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getReq_experience() {
        return req_experience;
    }

    public void setReq_experience(int req_experience) {
        this.req_experience = req_experience;
    }

    public Date getDate_of_interview() {
        return date_of_interview;
    }

    public void setDate_of_interview(Date date_of_interview) {
        this.date_of_interview = date_of_interview;
    }

    @Override
    public String toString() {
        return "Job{" +
                "jobId=" + jobId +
                ", candidates=" + candidates +
                ", title='" + title + '\'' +
                ", details='" + details + '\'' +
                ", req_experience=" + req_experience +
                ", date_of_interview=" + date_of_interview +
                '}';
    }
}
