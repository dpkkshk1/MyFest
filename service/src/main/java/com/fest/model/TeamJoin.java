package com.fest.model;


import javax.persistence.Column;
import javax.persistence.ColumnResult;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedNativeQuery;
import javax.persistence.SqlResultSetMapping;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

@Component
@Entity(name="team_join")

@NamedNativeQuery(  
		name="TeamJoin.getNotificationDetails",
		query ="select u.user_id as userId,u.name as teamLeader,t.team_id as team_id,t.name as "
				+ "team_name,e.name event_name,e.event_id as event_id from team_join tj "
				+ "join team t on tj.fk_team_id = t.team_id "
				+ "join user u on u.user_id = t.team_leader_id join event e on t.fk_event_id = e.event_id   "
				+ "where tj.fk_user_id =? and tj.status=0"
)
public class TeamJoin {

	public TeamJoin() {
		// TODO Auto-generated constructor stub
	}
	
	@Column(name="status")
	private int status;
	
	@EmbeddedId
	private TeamJoinId Id;
	
	@Transient
	private String joinTeam;
	
	
	public TeamJoin(int status, TeamJoinId id) {
		super();
		this.status = status;
		Id = id;
	}
	public String getJoinTeam() {
		return joinTeam;
	}
	public void setJoinTeam(String joinTeam) {
		this.joinTeam = joinTeam;
	}
	
	public TeamJoin(int status, TeamJoinId id, String joinTeam) {
		super();
		this.status = status;
		Id = id;
		this.joinTeam = joinTeam;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public TeamJoin(TeamJoinId id) {
		super();
		Id = id;
	}

	

}


