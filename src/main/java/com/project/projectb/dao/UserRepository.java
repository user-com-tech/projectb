package com.project.projectb.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.projectb.beans.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

}
