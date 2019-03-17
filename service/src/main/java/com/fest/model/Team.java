package com.fest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQueries;
import javax.persistence.NamedNativeQuery;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity(name="team")
@NamedNativeQueries({
	@NamedNativeQuery(
		name="Team.allTeams",
		query="select u.user_id as userId,u.name as teamLeader,t.team_id as team_id,t.name as team_name,e.name event_name,e.event_id as event_id from team_join tj join team t on tj.fk_team_id = t.team_id join user u on u.user_id = t.team_leader_id join event e on t.fk_event_id = e.event_id   where tj.fk_user_id =? and tj.status=0"
),
	@NamedNativeQuery(
			name="Team.dangerousJSON",
			query="select t.team_id, t.name teamName,group_concat(tj.status) status,group_concat(u.name) "
					+ "memberName,uu.name leaderName,group_concat(u.user_id) memberId,t.team_leader_id "
					+ "leaderId,ee.name,ee.event_id from team t left join team_join tj on t.team_id = tj.fk_team_id "
					+ "left join user u on tj.fk_user_id = u.user_id left join user uu on "
					+ "uu.user_id = t.team_leader_id left join event ee on ee.event_id=t.fk_event_id "
					+ "where t.team_id in (select * from ((select team_id from team where team_leader_id=?) "
					+ "union (select fk_team_id from team_join where fk_user_id=?))as r) group by t.team_id"
			),
	@NamedNativeQuery(
			name="Team.registrationCheck",
			query=" select user_id from user where user_id "
					+ "not in(select * from( (select team_leader_id from team where fk_event_id=?) "
					+ "union (select tj.fk_user_id from team t join team_join tj on t.team_id=tj.fk_team_id  "
					+ "where t.fk_event_id=?)) as ts) && user_id=?"
			),
	@NamedNativeQuery(
			name="Team.joinCheck",
			query="select user_id from user where user_id not in(select * "
					+ "from( (select team_leader_id from team where fk_event_id=?) union "
					+ "(select tj.fk_user_id from team t join team_join tj "
					+ "on t.team_id=tj.fk_team_id  "
					+ "where t.fk_event_id=?)) as ts) && email=?"
			)
	
})
public class Team {

	public Team() {
		// TODO Auto-generated constructor stub
	}
	
	public Team(int teamId) {
		super();
		this.teamId = teamId;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="team_id")
	private int teamId;
	
	@Column(name="name")
	private String name;
	
	@ManyToOne
	@JoinColumn(name = "team_leader_id")
	private User teamLeaderId;
	
	@ManyToOne
	@JoinColumn(name = "fk_event_id")
	private Events eventId;
	
	@Transient
	private String memberNames;
	
	@Transient
	private Event eventName;
	public Team(int teamId, String name, User teamLeaderId, Events eventId) {
		super();
		this.teamId = teamId;
		this.name = name;
		this.teamLeaderId = teamLeaderId;
		this.eventId = eventId;
	}
	


	public Team(String name, User teamLeaderId, Events eventId) {
		super();
		this.name = name;
		this.teamLeaderId = teamLeaderId;
		this.eventId = eventId;
	}

	public Team(String name, String memberNames, Event eventName) {
		super();
		this.name = name;
		this.memberNames = memberNames;
		this.eventName = eventName;
	}
	
	public String getMemberNames() {
		return memberNames;
	}

	public void setMemberNames(String memberNames) {
		this.memberNames = memberNames;
	}

	public Event getEventName() {
		return eventName;
	}

	public void setEventName(Event eventName) {
		this.eventName = eventName;
	}

	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public User getTeamLeaderId() {
		return teamLeaderId;
	}
	public void setTeamLeaderId(User teamLeaderId) {
		this.teamLeaderId = teamLeaderId;
	}
	public Events getEventId() {
		return eventId;
	}
	public void setEventId(Events eventId) {
		this.eventId = eventId;
	}

	@Override
	public String toString() {
		return "Team [teamId=" + teamId + ", name=" + name + ", teamLeaderId=" + teamLeaderId + ", eventId=" + eventId
				+ ", memberNames=" + memberNames + ", eventName=" + eventName + "]";
	}
	
	

}
