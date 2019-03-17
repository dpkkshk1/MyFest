package com.fest.repo;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fest.model.TeamJoin;

@Repository
public interface TeamJoinRepository extends JpaRepository<TeamJoin, Integer>{

	public List<Object[]> getNotificationDetails(@Param("tj.fk_user_id") int userId);

}
