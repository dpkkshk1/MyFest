package com.fest.model;

import org.springframework.stereotype.Component;

@Component
public class EventRegistration {

	public EventRegistration() {
		// TODO Auto-generated constructor stub
	}
	private int registrationId;
	private Team teamId;
	private Event eventId;
	public EventRegistration(int registrationId, Team teamId, Event eventId) {
		super();
		this.registrationId = registrationId;
		this.teamId = teamId;
		this.eventId = eventId;
	}
	public EventRegistration(Team teamId, Event eventId) {
		super();
		this.teamId = teamId;
		this.eventId = eventId;
	}
	public int getRegistrationId() {
		return registrationId;
	}
	public void setRegistrationId(int registrationId) {
		this.registrationId = registrationId;
	}
	public Team getTeamId() {
		return teamId;
	}
	public void setTeamId(Team teamId) {
		this.teamId = teamId;
	}
	public Event getEventId() {
		return eventId;
	}
	public void setEventId(Event eventId) {
		this.eventId = eventId;
	}
	

}
