package com.fest.model;

public class TeamUser {

	public TeamUser() {
		// TODO Auto-generated constructor stub
	}

	private User user;
	private SuperVisor superVisor;

	public TeamUser(User user, SuperVisor superVisor) {
		super();
		this.user = user;
		this.superVisor = superVisor;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public SuperVisor getSuperVisor() {
		return superVisor;
	}

	public void setSuperVisor(SuperVisor superVisor) {
		this.superVisor = superVisor;
	}

	@Override
	public String toString() {
		return "TeamUser [user=" + user + ", superVisor=" + superVisor + "]";
	}

}
