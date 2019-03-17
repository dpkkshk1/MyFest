package com.fest.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.fest.model.Events;
@Repository
public interface EventsRepository extends JpaRepository<Events, Integer>{
	
}
