package com.fest.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fest.encryption.StrongAES;
import com.fest.exception.FestException;
import com.fest.model.Events;
import com.fest.model.Team;
import com.fest.model.TeamJoin;
import com.fest.model.TeamJoinId;
import com.fest.model.User;
import com.fest.repo.EventsRepoService;
import com.fest.repo.TeamJoinRepoService;


@Controller
@ComponentScan("com.fest")
public class TestController {

	
	@Autowired(required = true)
	private StrongAES strong;


	@Autowired(required=true)
	private EventsRepoService eventRepoService;
	
	@Autowired(required=true)
	private TeamJoinRepoService teamJoinRepoService;
	/*
	 * @Autowired public void setDepartmentServices(DepartmentServices
	 * departmentServices) { this.departmentServices = departmentServices; }
	 * 
	 * @Autowired public void setSkillServices(SkillServices skillServices) {
	 * this.skillServices = skillServices; }
	 * 
	 * @Autowired public void setLoginServices(LoginServices loginServices) {
	 * this.loginServices = loginServices; }
	 * 
	 * @Autowired public void setEmployeeServices(EmployeeServices
	 * employeeServices) { this.employeeServices = employeeServices; }
	 * 
	 * @Autowired public void
	 * setEmployeeSkillSetServices(EmployeeSkillSetServices
	 * employeeSkillSetServices) { this.employeeSkillSetServices =
	 * employeeSkillSetServices; }
	 */
	/*
	 * @RequestMapping("/") public String home(){ return "login1"; }
	 */
	@GetMapping("/logintwo")
	public ModelAndView loginbb(){
		
		ModelAndView obModelAndView = new ModelAndView("login1");
		return obModelAndView;
	}

	@RequestMapping("/home")
	public ModelAndView home(ModelAndView modelAndView) {
		List<Events> listEvents = eventRepoService.allEvents();
		modelAndView.addObject("eventlist", listEvents);
		modelAndView.setViewName("homepage");
		return modelAndView;
	}
	

/*	@RequestMapping("/register")
	public ModelAndView registrationDo(User user) {
		ModelAndView mav = null;
		String pass = strong.run(user.getPassword());
		user.setPassword(pass);
		int count = userService.registerUser(user);
		String message = "error";
		if (count > 0) {
			message = "Success";
		}

		mav = new ModelAndView("home");
		mav.addObject("message", message);
		return mav;
	}*/
/*
	@PostMapping("/LoginController")
	public ModelAndView login(User user, HttpSession session) throws FestException {
		ModelAndView mav = null;

		String view = "login1";
		String pass = strong.run(user.getPassword());
		user.setPassword(pass);

		System.out.println(user);
		int count = userService.loginCheck(user);

		System.out.println(count);
		if (count > 0) {

			view = "homepage";
			mav = new ModelAndView(view);
			
			User obUser=new User();
			obUser=userService.getUser(count);
			System.out.println(obUser);
			System.out.println(count);
			List<Events> listEvents = eventService.getAllEvents();
			session.setAttribute("eventlist", listEvents);
			session.setAttribute("obUser", obUser);
			mav.addObject("userId", count);
		} else {
			mav = new ModelAndView("homepage");
			List<Events> listEvents = eventService.getAllEvents();
			session.setAttribute("eventlist", listEvents);
			session.setAttribute("failed", "failed");
			mav.addObject("userId", "error not found");
		}

		return mav;
	}
	@GetMapping("/register")
	public ModelAndView teamget(@RequestParam int eventId,HttpSession session){
		session.setAttribute("eventId", eventId);
		System.out.println(eventId+"vfggggggggg");
		ModelAndView obModelAndView = new ModelAndView("registerTeam");
		//obModelAndView.addObject("eventId", eventId);
		return obModelAndView;
	}
	@PostMapping("/registerTeamControl")
	public ModelAndView teamRegistration(Team team,HttpSession session){
		System.out.println(team);
		ModelAndView obModelAndView = new ModelAndView("registerTeam");
		//obModelAndView.addObject("eventId", eventId);
		int eventId=(int)session.getAttribute("eventId");
		User user=(User) session.getAttribute("obUser");
		int userId=user.getUserId();
		String teamName=team.getName();
		int teamId=teamService.insertTeam(userId, eventId, teamName);
		System.out.println(teamId);
		System.out.println(eventId+" "+team);
		return obModelAndView;
	}
	
	@GetMapping("/ajaxNotification")
	public List<TeamJoin> getAllMember(HttpSession session) throws FestException{
		List<TeamJoin> list= new ArrayList<TeamJoin>();
		User user=(User) session.getAttribute("obUser");
		list=teamJoinServices.fetchByUserId(user.getUserId());
		
		return list;
	}*/
	@GetMapping("/requestDelete")
	public ModelAndView requestDelete(@RequestParam int teamId,HttpSession session){
		ModelAndView mav = new ModelAndView("homepage");
		User user=(User)session.getAttribute("obUser");
		int userId=user.getUserId();
		TeamJoin teamJoin=new TeamJoin(new TeamJoinId(userId,teamId));
		teamJoinRepoService.deleteTeamJoin(teamJoin);
		return mav;
	}
	@GetMapping("/requestAccept")
	public ModelAndView requestAccept(@RequestParam int teamId,HttpSession session){
		ModelAndView mav = new ModelAndView("homepage");
		User user=(User)session.getAttribute("obUser");
		int userId=user.getUserId();
		TeamJoin teamJoin=new TeamJoin(new TeamJoinId(userId,teamId));
		teamJoin.setStatus(1);
		TeamJoin obTeamJoin=teamJoinRepoService.updateTeamJoin(teamJoin);
		return mav;
	}
	@GetMapping("/logout")
	public ModelAndView requestLogout(HttpSession session){
		ModelAndView mav = new ModelAndView("homepage");
		session.invalidate();
		List<Events> listEvents = eventRepoService.allEvents();
		mav.addObject("eventlist", listEvents);
		mav.setViewName("homepage");
		return mav;
	}
	
	
	

}
