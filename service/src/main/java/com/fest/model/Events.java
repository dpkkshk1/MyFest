package com.fest.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import org.springframework.stereotype.Component;

@Entity(name="event")
@Component
public class Events {

	public Events() {
		// TODO Auto-generated constructor stub
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="event_id")
	private int eventId;
	
	@Column(name="name")
	private String eventName;
	
	@Column(name="fee")
	private Double fee;
	
	@Column(name="max_teamsize")
	private int maxSize;
	
	@Column(name="min_teamsize")
	private int minSize;
	
	@Column(name="location")
	private String location;
	
	@Column(name="allowed_teams")
	private int allowedTeams;
	
	@ManyToOne
	@JoinColumn(name = "fk_supervisor_id")
	private SuperVisor superVisor;
	@Column(name="photopath")
	private String photoPath;
	
	public Events(int eventId, String eventName, int maxSize, int minSize, Double fee, String location,
			int allowedTeams, SuperVisor superVisor, String photoPath) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.maxSize = maxSize;
		this.minSize = minSize;
		this.fee = fee;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.superVisor = superVisor;
		this.photoPath = photoPath;
	}

	public Events(int eventId, String eventName, int maxSize, int minSize, Double fee, String location,
			int allowedTeams, SuperVisor superVisor) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.maxSize = maxSize;
		this.minSize = minSize;
		this.fee = fee;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.superVisor = superVisor;
	}

	public Events(int eventId, String eventName, int maxSize, int minSize, Double fee, String location,
			int allowedTeams, String photoPath) {
		super();
		this.eventId = eventId;
		this.eventName = eventName;
		this.maxSize = maxSize;
		this.minSize = minSize;
		this.fee = fee;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.photoPath = photoPath;
	}

	public Events(String eventName, int maxSize, int minSize, Double fee, String location, int allowedTeams,
			String photoPath) {
		super();
		this.eventName = eventName;
		this.maxSize = maxSize;
		this.minSize = minSize;
		this.fee = fee;
		this.location = location;
		this.allowedTeams = allowedTeams;
		this.photoPath = photoPath;
	}

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public int getMaxSize() {
		return maxSize;
	}

	public void setMaxSize(int maxSize) {
		this.maxSize = maxSize;
	}

	public int getMinSize() {
		return minSize;
	}

	public void setMinSize(int minSize) {
		this.minSize = minSize;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public int getAllowedTeams() {
		return allowedTeams;
	}

	public void setAllowedTeams(int allowedTeams) {
		this.allowedTeams = allowedTeams;
	}

	public SuperVisor getSuperVisor() {
		return superVisor;
	}

	public void setSuperVisor(SuperVisor superVisor) {
		this.superVisor = superVisor;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public Double getFee() {
		return fee;
	}

	public void setFee(Double fee) {
		this.fee = fee;
	}

	@Override
	public String toString() {
		return "Events [eventId=" + eventId + ", eventName=" + eventName + ", maxSize=" + maxSize + ", minSize="
				+ minSize + ", fee=" + fee + ", location=" + location + ", allowedTeams=" + allowedTeams
				+ ", superVisor=" + superVisor + ", photoPath=" + photoPath + "]";
	}

}
