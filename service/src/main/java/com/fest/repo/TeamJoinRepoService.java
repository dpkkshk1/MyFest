package com.fest.repo;



import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fest.model.Team;
import com.fest.model.TeamJoin;
import com.fest.model.User;

@Service
public class TeamJoinRepoService {

	@Autowired
	TeamJoinRepository teamJoinRepository;
	
	@PersistenceContext
	private EntityManager manager;
	public TeamJoin insertTeamJoining(TeamJoin teamJoin){
		teamJoin.setStatus(0);
		return teamJoinRepository.save(teamJoin);
	}
	/*public boolean updateTeamJoin( Integer userId, Integer teamId )
	{
	    try
	    {
	    //manager.getTransaction().begin();
	        manager.createNativeQuery("updateTeamJoin", TeamJoin.class)
	        .setParameter("userid", 4).setParameter("teamid", 6).executeUpdate();
	      //  manager.getTransaction().commit();
	        return true;
	    }
	    catch (Exception e)
	    {
	    	System.out.println(e);
	    	e.printStackTrace();
	        return false;
	    }
	}*/

	public TeamJoin updateTeamJoin(TeamJoin team){
		return teamJoinRepository.save(team);
	}
	public void deleteTeamJoin(TeamJoin team){
	     teamJoinRepository.delete(team);
	}
	public Optional<TeamJoin> findTeamJoin(int teamId){
		return teamJoinRepository.findById(teamId);
	}
	public List<Object[]> getNotificationDetails(int userId){
		return teamJoinRepository.getNotificationDetails(userId);
				
	}
	


}
