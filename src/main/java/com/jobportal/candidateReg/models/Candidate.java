package com.jobportal.candidateReg.models;

import javax.persistence.*;

@Entity
public class Candidate {
    String fname;
    String lname;
    String email;
    String phone;
    int experience;
    @Id
    @Column(name="unique_id")
    String uniqueId;
    boolean status;


    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="job_id")
    private Job jobId;

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public String getUniqueId() {
        return uniqueId;
    }

    public void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Job getJobApplied() {
        return jobId;
    }

    public void setJobApplied(Job jobApplied) {
        this.jobId = jobApplied;
    }

    public Candidate(String fname, String lname, String email, String phone, int experience, String uniqueId, Job jobId) {
        this.fname = fname;
        this.lname = lname;
        this.email = email;
        this.phone = phone;
        this.experience = experience;
        this.uniqueId = uniqueId;
        this.status = false;
        this.jobId = jobId;
    }

    public Candidate() {
    }

    @Override
    public String toString() {
        return "Candidate{" +
                "fname='" + fname + '\'' +
                ", lname='" + lname + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", experience=" + experience +
                ", uniqueId='" + uniqueId + '\'' +
                ", status=" + status +
                ", jobId=" + jobId +
                '}';
    }
}
