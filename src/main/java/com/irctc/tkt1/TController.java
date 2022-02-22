package com.irctc.tkt1;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TController {
	static int mx;
	@Autowired
	SessionFactory sf;

	@RequestMapping("home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping("details")
	public ModelAndView m(@RequestParam("board") String board,@RequestParam("arriving") String arr,HttpServletRequest req) {
		HttpSession hs = req.getSession();
		hs.setAttribute("from", board);
		hs.setAttribute("to", arr);
		ModelAndView mv = new ModelAndView();
		
		Session ss = sf.openSession();
		Criteria cc = ss.createCriteria(NTickets.class);
		cc.setProjection(Projections.rowCount());
		List<Object> ls = cc.list();
		Long rc = 0l;
		for (Object obj : ls) {
			rc = (Long) obj;

		}
		System.out.println(board);
		System.out.println(arr);
		if (rc > 0l&&!board.isBlank()&&!arr.isBlank()) {
			cc.setProjection(Projections.max("id"));

			List<Object> ll = cc.list();
			for (Object obj : ll) {
				mx = (Integer) obj;
			}
			mv.setViewName("details");
			mv.addObject("msg", "Great!!!! " + mx + " Tickets are available");
			
		} else if(board.isBlank()||arr.isBlank()) {
			mv.setViewName("home");
			mv.addObject("msg", "fields cannot be empty");
		}else if(rc==0l){
			mv.setViewName("home");
			mv.addObject("msg", "Sorry,Tickets Not Available");
		}
		

		return mv;
	}

	@RequestMapping("preview")
	public ModelAndView p(@ModelAttribute Tickets tt, ModelAndView mv, HttpServletRequest req) {
		if(!tt.adhaar.isBlank()&&!tt.age.isBlank()&&!tt.mob.isBlank()&&!tt.name.isBlank()) {
			mv.addObject("tt", tt);
			HttpSession s2 = req.getSession();
			s2.setAttribute("tt", tt);
			mv.setViewName("preview");	
		}else {
			
			mv.setViewName("details");
			mv.addObject("msg", "Great!!!! " + mx + " Tickets are available");
			mv.addObject("mm", "fields cannot be empty");
		}
		
		return mv;
	}

	@RequestMapping("save")
	public String save(HttpServletRequest req) {
		HttpSession s2 = req.getSession();
		Session ss = sf.openSession();
		Transaction t2 = ss.beginTransaction();
		ss.save(s2.getAttribute("tt"));
		t2.commit();
		Session s1 = sf.openSession();
		NTickets t = s1.load(NTickets.class, mx);
		Transaction t1 = s1.beginTransaction();
		s1.delete(t);
		t1.commit();
		return "save";
	}
}
