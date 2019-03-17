package com.fest.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fest.model.Team;

@Repository
public interface TeamRepository extends JpaRepository<Team, Integer>{

	public List<Object[]> allTeams(@Param("fk_user_id") int userId);
	public List<Object[]> dangerousJSON(@Param("team_leader_id=1") int leaderId,@Param("fk_user_id") int userId);
	public List<Object[]> registrationCheck(@Param("fk_event_id=1") int eventId,@Param("t.fk_event_id=2" )int eventId2,@Param("user_id=3" )int userId);
	public List<Object[]> joinCheck(@Param("fk_event_id=1") int eventId,@Param("t.fk_event_id=2" )int eventId2,@Param("email=3" )String email);
}
