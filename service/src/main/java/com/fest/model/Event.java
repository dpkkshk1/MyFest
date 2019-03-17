package com.fest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Component
@Entity(name="event")
public class Event {

	public Event() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="event_id")
	private int eventId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="fee")
	private int fee;
	
	@Column(name="max_teamsize")
	private int maxTeamSize;
	
	@Column(name="min_teamsize")
	private int minTeamSize;
	
	@Column(name="location")
	private String location;
	
	@Column(name="allowed_teams")
	private int allowedTeams;
	
	@ManyToOne
	@JoinColumn(name = "fk_supervisor_id")
	private SuperVisor supervisorId;
	
	
	public Event(int eventId, String name, int fee, int maxTeamSize, int minTeamSize, String location, int allowedTeams,
			SuperVisor supervisorId) {
		super();
		this.eventId = eventId;
		this.name = name;
		this.fee = fee;
		this.maxTeamSize = maxTeamSize;
		this.minTeamSize = minTeamSize;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.supervisorId = supervisorId;
	}
	
	public Event(String name) {
		super();
		this.name = name;
	}

	public Event(String name, int fee, int maxTeamSize, int minTeamSize, String location, int allowedTeams,
			SuperVisor supervisorId) {
		super();
		this.name = name;
		this.fee = fee;
		this.maxTeamSize = maxTeamSize;
		this.minTeamSize = minTeamSize;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.supervisorId = supervisorId;
	}
	public int getEventId() {
		return eventId;
	}
	public void setEventId(int eventId) {
		this.eventId = eventId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getFee() {
		return fee;
	}
	public void setFee(int fee) {
		this.fee = fee;
	}
	public int getMaxTeamSize() {
		return maxTeamSize;
	}
	public void setMaxTeamSize(int maxTeamSize) {
		this.maxTeamSize = maxTeamSize;
	}
	public int getMinTeamSize() {
		return minTeamSize;
	}
	public void setMinTeamSize(int minTeamSize) {
		this.minTeamSize = minTeamSize;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getAllowedTeams() {
		return allowedTeams;
	}
	public void setAllowedTeams(int allowedTeams) {
		this.allowedTeams = allowedTeams;
	}
	public SuperVisor getSupervisorId() {
		return supervisorId;
	}
	public void setSupervisorId(SuperVisor supervisorId) {
		this.supervisorId = supervisorId;
	}
	

}
