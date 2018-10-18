package edu.dmacc.spring.tournamentregistration;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeamController {
	@Autowired TeamDao dao;

	private static final String[] games = { "League of Legends", "Minecraft", "Rocket League", "For Honor",
			"CoD: MW3" };

	@RequestMapping(value = "/form")
	public ModelAndView team() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("teamForm");
		modelAndView.addObject("team", new Team());
		modelAndView.addObject("games", games);

		return modelAndView;
	}

	
	@RequestMapping(value = "/result")
	public ModelAndView processTeam(Team team) {
		ModelAndView modelAndView = new ModelAndView();
		dao.insertTeam(team);
		modelAndView.setViewName("teamResult");
		modelAndView.addObject("t", team);
		return modelAndView;
	}
	
	@Bean
	public TeamDao dao() {
		TeamDao bean = new TeamDao();
		return bean;
	}
	
	@RequestMapping(value = "/viewAll")
	public ModelAndView viewAll() {
		ModelAndView modelAndView = new ModelAndView();
		List<Team> allTeams = dao.getAllTeams();
		modelAndView.setViewName("viewAllTeams");
		modelAndView.addObject("all", allTeams);
		return modelAndView;
		
	}
}
