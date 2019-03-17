package com.fest.interfaces;



import com.fest.exception.FestException;
import com.fest.model.User;

public interface IUser {
	
	public int registerUser(User user);
	public int loginCheck(User user);
	public User getUser(int userId);
	public int[] getbyEmailofTeamJoinees(String email) throws FestException;
}
