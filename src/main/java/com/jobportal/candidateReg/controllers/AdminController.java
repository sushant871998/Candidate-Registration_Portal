package com.jobportal.candidateReg.controllers;

import com.jobportal.candidateReg.models.Admin;
import com.jobportal.candidateReg.models.Candidate;
import com.jobportal.candidateReg.models.Job;
import com.jobportal.candidateReg.repositories.AdminRepo;
import com.jobportal.candidateReg.repositories.CandidateRepo;
import com.jobportal.candidateReg.repositories.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
public class AdminController {

    @Autowired
    JobRepo jrepo;

    @Autowired
    AdminRepo arepo;

    @Autowired
    CandidateRepo crepo;
    //variables to store the id's for deletion
    int idToDelete;
    int idToUpdate;



    /*----------------------------Add Job Mappings Start------------------------------------------------*/

    //mapping for adding the job by admin
    @GetMapping("addJob")
    public String addJob()
    {
        return "addJob";
    }

    @PostMapping(value="addJob")
    public String postJob(@RequestParam("title") String title
            ,@RequestParam("details") String details
            ,@RequestParam("req_experience") int req_experience
            ,@RequestParam("doi") String doi,Model m)
            throws ParseException {

        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date d= simpleDateFormat.parse(doi);
        Job hisJob=new Job(title,details,req_experience,d);
        jrepo.save(hisJob);
        m.addAttribute("list",jrepo.findAll());
        return "homepage";
    }


    /*-------------------------------Add Job Mappings End----------------------------------------------*/






    /*----------------------------Delete Job Mappings Start-------------------------------------------------*/


    //mapping for deleting the job by admin
    @GetMapping("deleteTheJob")
    public String getTheJob()
    {
        return "deleteJob";
    }

    @GetMapping("deleteJob")
    public String getJobAndDelete(@RequestParam("jobIdnum")int jobId, Model m) throws ParseException {
        Job jobToDelete=jrepo.getOne(jobId);
        idToDelete=jobId;
        m.addAttribute("jobId",jobToDelete.getJobId());
        m.addAttribute("title",jobToDelete.getTitle());
        m.addAttribute("details",jobToDelete.getDetails());
        m.addAttribute("req_experience",jobToDelete.getReq_experience());
        int countOfCandiates=crepo.countCandidates(jobId);
        m.addAttribute("numCandidates",countOfCandiates);
        Date date=jobToDelete.getDate_of_interview();
        System.out.println("date"+date.toString());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date dateString=sdf.parse(date.toString());
        System.out.println("dateString"+dateString);
        m.addAttribute("doi",dateString);
        System.out.println(jobToDelete);
        return "deleteJob";
    }

    @PostMapping("deleteJob/{jobId}")
    public String deleteJob(Model m)
    {
        jrepo.deleteById(idToDelete);
        m.addAttribute("list",jrepo.findAll());
        return "homepage";
    }

    /*---------------------------------Delete Job Mappings End---------------------------------------------*/






    /*---------------------------------Update Job Mappings Start-------------------------------------------*/



    //mappings for updating the job
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
    public String updateTheJob(@RequestParam("taketitle") String title
            ,@RequestParam("takedetails") String details
            ,@RequestParam("takereq_experience") int exp
            ,@RequestParam("takedoi") String doi, Model m)
            throws ParseException {
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

    /*------------------------------Update Job Mappings End-------------------------------------------------*/



    //mapping for admin-login
    @PostMapping("admin-login")
    public String adminLogin(@RequestParam("email") String userName,@RequestParam("pass") String pass)
    {
        List<Admin> opt=arepo.find(userName,pass);
        if(opt==null)
            return "error";
        return "admin";
    }
}
