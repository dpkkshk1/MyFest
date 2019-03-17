package com.fest.interfaces;

import java.util.List;

import com.fest.exception.FestException;
import com.fest.model.TeamJoin;

public interface ITeamJoin {
	public List<TeamJoin> fetchByUserId(int userId);
	public int deleteRequest(int userId,int teamId);
	public int updateTeamJoining(int userId,int teamId);
	public void insertTeamJoining(int userId,int teamId) throws FestException;
}
