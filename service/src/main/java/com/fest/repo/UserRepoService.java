package com.fest.repo;

import java.util.Iterator;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fest.model.Events;
import com.fest.model.Team;
import com.fest.model.TeamJoin;
import com.fest.model.User;

@Service
public class UserRepoService {
	@Autowired
	UserRepository obUserRepository;
	public List<Object[]> loginCheck(User user){
		return obUserRepository.loginCheck(user.getEmail(),user.getPassword());
				
	}
	public User registration(User user){
		return obUserRepository.save(user);
	}
	public List<Object[]> userByEmail(String email){
		return obUserRepository.userByEmail(email);
	}
	
}
