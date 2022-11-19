package com.enactus_1.services;

import java.util.List;

import com.enactus_1.entities.Learner;

public interface LearnerService {

	public void saveLearner(Learner l);

	public List<Learner> getAllLearners();

	public Learner findLeanerById(int id);

	public void deleteLearnerData(int id);

	public Learner findLeanerByMob(long mobile);
}
