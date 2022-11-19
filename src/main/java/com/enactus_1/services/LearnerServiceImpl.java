package com.enactus_1.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Learner;
import com.enactus_1.repositories.LearnerRepository;

@Service
public class LearnerServiceImpl implements LearnerService {

	@Autowired
	private LearnerRepository learnerRepo;

	@Override
	public void saveLearner(Learner l) {
		
		learnerRepo.save(l);
	}

	@Override
	public List<Learner> getAllLearners() {
		
		List<Learner> learners = learnerRepo.findAll();
		
		return learners;
	}

	@Override
	public Learner findLeanerById(int id) {
		
		Learner learner = learnerRepo.findById(id).get();
		
		return learner;
	}

	@Override
	public void deleteLearnerData(int id) {
		
		learnerRepo.deleteById(id);	
	}

	@Override
	public Learner findLeanerByMob(long mobile) {

		Learner learner = learnerRepo.findByMobile(mobile);
		
		return learner;
	}
}
