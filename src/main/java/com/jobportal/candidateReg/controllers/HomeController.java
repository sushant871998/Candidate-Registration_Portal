package com.jobportal.candidateReg.controllers;

import com.jobportal.candidateReg.models.Candidate;
import com.jobportal.candidateReg.models.Job;
import com.jobportal.candidateReg.repositories.CandidateRepo;
import com.jobportal.candidateReg.repositories.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.text.spi.DateFormatProvider;
import java.util.Date;

@Controller
public class HomeController {

    //@Autowired
    //adminRepo repo;
    @Autowired
    JobRepo repo;

    @Autowired
    CandidateRepo crepo;

    final long SIX_MONTHS=180L;
    @GetMapping("/")
    public String root(Model m)
    {
        m.addAttribute("list",repo.findAll());
        //System.out.println(m.getAttribute("list"));
        return "homepage";
    }

    @GetMapping("/admin")
    public String adminCrud()
    {
        return "admin";
    }

    @GetMapping("apply")
    public String apply(@RequestParam("jobid") int jobId,@RequestParam("req_exp")  int reqExp,@RequestParam("doi") String doi,Model m)
    {
        //System.out.println(jobid);
        m.addAttribute("jobid",jobId);
        m.addAttribute("req_exp",reqExp);
        m.addAttribute("doi",doi);
        return "applyNow";
    }
//    @PostMapping("applyNow")
//    public String applyNow(@RequestParam("fname") String fname,
//                            @RequestParam("lname") String lname,
//                            @RequestParam("email") String email,
//                            @RequestParam("phone") String phone,
//                            @RequestParam("exp") int exp,
//                            @RequestParam("uniqueid") String uniqueid)
//    {
//        return "homepage";
//    }
    @PostMapping("apply")
    public String apply(@RequestParam("fname") String fname,
                            @RequestParam("lname") String lname,
                            @RequestParam("email") String email,
                            @RequestParam("phone") String phone,
                            @RequestParam("exp") int exp,
                            @RequestParam("uniqueid") String uniqueid,
                            @RequestParam("jobid") int jobId,
                            @RequestParam("req_exp") int req_exp,
                            @RequestParam("doi") String doi) throws ParseException {
        if(exp<req_exp)
            return "error";
        Candidate duplicate=crepo.findById(uniqueid).orElse(null);
        if(duplicate!=null)
        {
            SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd");
            Date currentDate = new Date();
            Date date_of_interview=  sdformat.parse(doi);
            System.out.println(currentDate.compareTo(date_of_interview));

            long difference_In_Time =currentDate.getTime()-date_of_interview.getTime();
            System.out.println("df="+difference_In_Time);
            long difference_In_Days = (difference_In_Time / (1000 * 60 * 60 * 24)) % 365;
            System.out.println(difference_In_Days );
            if(difference_In_Days<SIX_MONTHS||duplicate.isStatus())
                return "error";
        }
        Job candidateJob=repo.findById(jobId).orElse(new Job());
        Candidate candidate=new Candidate(fname,lname,email,phone,exp,uniqueid,candidateJob);
        System.out.println(candidate);
        crepo.save(candidate);
        return "homepage";
    }
}
