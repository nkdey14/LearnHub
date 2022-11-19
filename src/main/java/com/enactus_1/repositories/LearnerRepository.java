package com.enactus_1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enactus_1.entities.Learner;

public interface LearnerRepository extends JpaRepository<Learner, Integer> {

	public Learner findByMobile(long mobile);

}
