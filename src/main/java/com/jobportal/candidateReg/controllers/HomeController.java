package com.jobportal.candidateReg.controllers;

import com.jobportal.candidateReg.models.Candidate;
import com.jobportal.candidateReg.models.Job;
import com.jobportal.candidateReg.repositories.CandidateRepo;
import com.jobportal.candidateReg.repositories.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.spi.DateFormatProvider;
import java.util.Date;

@Controller
public class HomeController {


    @Autowired
    JobRepo repo;




    @Autowired
    CandidateRepo crepo;




    //no-of-days in 6 months
    final long SIX_MONTHS=180L;




    //mapping for root page
    @GetMapping("/")
    public String root(Model m)
    {
        m.addAttribute("list",repo.findAll());
        //System.out.println(m.getAttribute("list"));
        return "homepage";
    }




    //mapping for google search
    @GetMapping("/search")
    public ModelAndView search(@RequestParam("search") String toSearch)
    {
        String redirectUrl = "https://www.google.com/";
        System.out.println(redirectUrl);
        return new ModelAndView("redirect:"+redirectUrl);
    }




    //mapping for admin login
    @GetMapping("/admin")
    public String adminCrud()
    {
        return "index";
    }



    //mapping for applying for a job
    @GetMapping("apply")
    public String apply(@RequestParam("jobid") int jobId,@RequestParam("req_exp")  int reqExp,@RequestParam("doi") String doi,Model m)
    {
        m.addAttribute("jobid",jobId);
        m.addAttribute("req_exp",reqExp);
        m.addAttribute("doi",doi);
        //System.out.println(job);
        return "applyNow";
    }



    @PostMapping("apply")
    public String apply(@RequestParam("fname") String fname,
                            @RequestParam("lname") String lname,
                            @RequestParam("email") String email,
                            @RequestParam("phone") String phone,
                            @RequestParam("exp") int exp,
                            @RequestParam("uniqueid") String uniqueid,
                            @RequestParam("jobid") int jobId,
                            @RequestParam("req_exp") int req_exp,
                            @RequestParam("doi") String doi,Model m) throws ParseException {
        if(exp<req_exp)
            return "notEligible";
        Candidate duplicate=crepo.findByUniqueId(uniqueid);
        //System.out.println(duplicate);
        if(duplicate!=null)
        {
            SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
            Date currentDate = new Date();
            Date date_of_interview=  sdformat.parse(doi);
            System.out.println(currentDate.compareTo(date_of_interview));

            long difference_In_Time =currentDate.getTime()-date_of_interview.getTime();
            System.out.println("df="+difference_In_Time);
            long difference_In_Days = Math.abs((difference_In_Time / (1000 * 60 * 60 * 24)) % 365);
            System.out.println("diff in days:"+difference_In_Days );
            if(difference_In_Days<SIX_MONTHS||duplicate.isStatus())
                return "notEligible";
        }
        //paas model
        Job candidateJob=repo.findById(jobId).orElse(null);
        System.out.println(candidateJob.toString());
        //System.out.println(candidateJob);
        Candidate candidate=new Candidate(fname,lname,email,phone,exp,uniqueid,candidateJob);
        System.out.println(candidate);
        crepo.save(candidate);
        crepo.flush();
        m.addAttribute("list",repo.findAll());
        return "homepage";
    }



    /*-------------------------mappings for sorting the result starts----------------------------------*/



    //sorting by-name
    @GetMapping("by-name")
    public String jobByName(Model m)
    {
        m.addAttribute("list",repo.findByOrderByTitle());
        System.out.println("Bytitle:"+repo.findByOrderByTitle());
        return "homepage";
    }



    //sorting by-exp
    @GetMapping("by-exp")
    public String jobByExp(Model m)
    {
        m.addAttribute("list",repo.findByOrderByReqExp());
        System.out.println("Byorder:"+repo.findByOrderByReqExp());
        return "homepage";
    }



    //sorting by-date-of-interview
    @GetMapping("by-doi")
    public String jobByDoi(Model m)
    {
        m.addAttribute("list",repo.findByOrderByDoi());
        System.out.println("Bydoi:"+repo.findByOrderByReqExp());
        return "homepage";
    }



    /*--------------------------mappings for sorting the result ends------------------------------------*/
}
