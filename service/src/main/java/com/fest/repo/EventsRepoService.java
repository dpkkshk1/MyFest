package com.fest.repo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fest.model.Events;
@Service
public class EventsRepoService {

	public EventsRepoService() {
		// TODO Auto-generated constructor stub
	}
	@Autowired(required=true)
	EventsRepository obEventsRepository;
	public List<Events> allEvents(){
		return obEventsRepository.findAll();
	}

}
