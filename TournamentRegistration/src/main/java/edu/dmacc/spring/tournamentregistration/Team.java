package edu.dmacc.spring.tournamentregistration;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="teams")
public class Team {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String teamname;
	private String leader;
	private String password;
	private int numOfMembers;
	private boolean internationalTeam;
	private String game;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getLeader() {
		return leader;
	}
	public void setLeader(String leader) {
		this.leader = leader;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getNumOfMembers() {
		return numOfMembers;
	}
	public void setNumOfMembers(int numOfMembers) {
		this.numOfMembers = numOfMembers;
	}
	public boolean isInternationalTeam() {
		return internationalTeam;
	}
	public void setInternationalTeam(boolean internationalTeam) {
		this.internationalTeam = internationalTeam;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	
}


