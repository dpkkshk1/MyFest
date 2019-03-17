package com.fest.model;

public class NotificationJSON {

	private int userId;
	private String teamLeaderName;
	private int teamId;
	private String teamName;
	private String eventName;
	private int eventId;

	public NotificationJSON() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NotificationJSON(int userId, String teamLeaderName, int teamId, String teamName, String eventName, int eventId) {
		super();
		this.userId = userId;
		this.teamLeaderName = teamLeaderName;
		this.teamId = teamId;
		this.teamName = teamName;
		this.eventName = eventName;
		this.eventId = eventId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getTeamLeaderName() {
		return teamLeaderName;
	}

	public void setTeamLeaderName(String teamLeaderName) {
		this.teamLeaderName = teamLeaderName;
	}

	public int getTeamId() {
		return teamId;
	}

	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	@Override
	public String toString() {
		return "NotificationJSON [userId=" + userId + ", teamLeaderName=" + teamLeaderName + ", teamId=" + teamId
				+ ", teamName=" + teamName + ", eventName=" + eventName + ", eventId=" + eventId + "]";
	}

}
