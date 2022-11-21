package com.enactus_1.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Billing;
import com.enactus_1.repositories.BillingRepository;

@Service
public class BillingServiceImpl implements BillingService {
	
	@Autowired
	private BillingRepository billingRepo;

	@Override
	public void saveBillingDetails(Billing b) {
		
		billingRepo.save(b);
	}

}
