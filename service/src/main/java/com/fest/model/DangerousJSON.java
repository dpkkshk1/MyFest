package com.fest.model;

public class DangerousJSON {

	public DangerousJSON() {
		// TODO Auto-generated constructor stub
	}
	private int teamId;
	private String teamName;
	private String[] status;
	private String[] memberName;
    private String leaderName;
    private int leaderId;
    private String[] userId;
    private String eventName;
    private int eventId;
    
  
	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
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

	public String[] getStatus() {
		return status;
	}

	public void setStatus(String[] status) {
		this.status = status;
	}

	public String[] getMemberName() {
		return memberName;
	}

	public void setMemberName(String[] memberName) {
		this.memberName = memberName;
	}

	public String getLeaderName() {
		return leaderName;
	}

	public void setLeaderName(String leaderName) {
		this.leaderName = leaderName;
	}

	public int getLeaderId() {
		return leaderId;
	}

	public void setLeaderId(int leaderId) {
		this.leaderId = leaderId;
	}

	public String[] getUserId() {
		return userId;
	}

	public void setUserId(String[] userId) {
		this.userId = userId;
	}

	public DangerousJSON(int teamId, String teamName, String[] status, String[] memberName, String leaderName, int leaderId,
			String[] userId) {
		super();
		this.teamId = teamId;
		this.teamName = teamName;
		this.status = status;
		this.memberName = memberName;
		this.leaderName = leaderName;
		this.leaderId = leaderId;
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "DangerousJSON [teamId=" + teamId + ", teamName=" + teamName + ", status=" + status + ", memberName="
				+ memberName + ", leaderName=" + leaderName + ", leaderId=" + leaderId + ", userId=" + userId + "]";
	}
    

}
