package com.fest.interfaces;

import java.util.List;

import com.fest.model.Team;

public interface ITeam {

	public int insertTeam(int userId,int eventId,String teamName);
	public List<Team> getValues(int teamId);
}
