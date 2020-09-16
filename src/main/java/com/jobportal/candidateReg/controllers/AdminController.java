package com.jobportal.candidateReg.controllers;

import com.jobportal.candidateReg.models.Candidate;
import com.jobportal.candidateReg.models.Job;
import com.jobportal.candidateReg.repositories.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class AdminController {

    @Autowired
    JobRepo jrepo;

    int idToDelete;
    int idToUpdate;
    @GetMapping("addJob")
    public String addJob()
    {
        return "addJob";
    }
    @PostMapping(value="addJob")
    public String postJob(@RequestParam("title") String title,@RequestParam("details") String details,@RequestParam("req_experience") int req_experience,@RequestParam("doi") String doi) throws ParseException {

        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date d= simpleDateFormat.parse(doi);
        Job hisJob=new Job(title,details,req_experience,d);
        jrepo.save(hisJob);
        return "homepage";
    }
    @GetMapping("deleteTheJob")
    public String getTheJob()
    {
        return "deleteJob";
    }
    @GetMapping("deleteJob")
    public String getJobAndDelete(@RequestParam("jobIdnum")int jobId, Model m)
    {
        Job jobToDelete=jrepo.getOne(jobId);
        idToDelete=jobId;
        m.addAttribute("jobId",jobToDelete.getJobId());
        m.addAttribute("title",jobToDelete.getTitle());
        m.addAttribute("details",jobToDelete.getDetails());
        m.addAttribute("req_experience",jobToDelete.getReq_experience());
        m.addAttribute("doi",jobToDelete.getDate_of_interview());
        System.out.println(jobToDelete);
        return "deleteJob";
    }
    @PostMapping("deleteJob/{jobId}")
    public String deleteJob()
    {
        jrepo.deleteById(idToDelete);
        return "homepage";
    }
    @GetMapping("updateTheJob")
    public String updateTheJob()
    {
        return "updateJob";
    }
    @GetMapping("updateJob")
    public String updateTheJob(@RequestParam("jobIdnum") int jobId,Model m)
    {

        Job jobToUpdate=jrepo.getOne(jobId);
        idToUpdate=jobId;
        m.addAttribute("jobId",jobToUpdate.getJobId());
        m.addAttribute("title",jobToUpdate.getTitle());
        m.addAttribute("details",jobToUpdate.getDetails());
        m.addAttribute("req_experience",jobToUpdate.getReq_experience());
        m.addAttribute("doi",jobToUpdate.getDate_of_interview());
        return "updateJob";
    }
    @PostMapping("updateJob")
    public String updateTheJob(@RequestParam("taketitle") String title,@RequestParam("takedetails") String details,@RequestParam("takereq_experience") int exp,@RequestParam("takedoi") String doi, Model m) throws ParseException {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date d= simpleDateFormat.parse(doi);
        jrepo.findAndUpdate(title,details,exp,d,idToUpdate);
        Job jobToUpdate=jrepo.getOne(idToUpdate);
        System.out.println(jobToUpdate);
        m.addAttribute("jobId",jobToUpdate.getJobId());
        m.addAttribute("title",jobToUpdate.getTitle());
        m.addAttribute("details",jobToUpdate.getDetails());
        m.addAttribute("req_experience",jobToUpdate.getReq_experience());
        m.addAttribute("doi",jobToUpdate.getDate_of_interview());
        return "updateJob";
    }
}
