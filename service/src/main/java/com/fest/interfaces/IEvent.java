package com.fest.interfaces;

import java.util.List;

import com.fest.model.Events;

public interface IEvent {

	public List<Events> getAllEvents();
	public int getMinCount(int eventId);
}
