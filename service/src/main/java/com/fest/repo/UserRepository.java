package com.fest.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.fest.model.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	public List<Object[]> loginCheck(@Param("email") String email,@Param("password") String password);
	public List<Object[]> userByEmail(@Param("email") String email);

    
}
