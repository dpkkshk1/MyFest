package com.fest.model;

import org.springframework.stereotype.Component;

@Component
public class TeamFormation {

	public TeamFormation() {
		// TODO Auto-generated constructor stub
	}
	private int status;
	private User userId;
	private Team teamId;
	public TeamFormation(int status, User userId, Team teamId) {
		super();
		this.status = status;
		this.userId = userId;
		this.teamId = teamId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public User getUserId() {
		return userId;
	}
	public void setUserId(User userId) {
		this.userId = userId;
	}
	public Team getTeamId() {
		return teamId;
	}
	public void setTeamId(Team teamId) {
		this.teamId = teamId;
	}
	

}
