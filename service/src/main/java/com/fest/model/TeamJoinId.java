package com.fest.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class TeamJoinId implements Serializable {
    /**
	 * 
	 */
	public TeamJoinId(){
		
	}
	
	private static final long serialVersionUID = 1L;
	@Column(name="fk_user_id")
	int userId;
	@Column(name="fk_team_id")
    int teamId;
	
	public TeamJoinId(int userId, int teamId) {
		super();
		this.userId = userId;
		this.teamId = teamId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + teamId;
		result = prime * result + userId;
		return result;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTeamId() {
		return teamId;
	}
	public void setTeamId(int teamId) {
		this.teamId = teamId;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TeamJoinId other = (TeamJoinId) obj;
		if (teamId != other.teamId)
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}


	
}