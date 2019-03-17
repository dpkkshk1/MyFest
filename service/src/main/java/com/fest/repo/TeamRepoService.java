package com.fest.repo;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fest.model.Team;

@Service
public class TeamRepoService {

	@Autowired
	TeamRepository teamRepository;
	public Team createTeam(Team team){
		return teamRepository.save(team);
	}
	public List<Object[]> getAllTeam(int userid){
		return teamRepository.allTeams(userid);
	}
	public List<Team> getAll(){
		return teamRepository.findAll();
	}
	public Optional<Team> findTeamId(int teamId){
		return teamRepository.findById(teamId);
	}
	public List<Object[]> dangerousJSON(int userId){
		return teamRepository.dangerousJSON(userId, userId);
	}
	public List<Object[]> registrationCheck(int eventId,int userId){
		return teamRepository.registrationCheck(eventId, eventId, userId);
	}
	public List<Object[]> joinCheck(int eventId,String email){
		return teamRepository.joinCheck(eventId, eventId, email);
	}
}
