package com.enactus_1.services;

import java.util.List;

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

	@Override
	public List<Billing> findAllBills() {
		
		List<Billing> bills = billingRepo.findAll();
		
		return bills;
	}

	@Override
	public Billing findBillById(int id) {
		
		Billing bill = billingRepo.findById(id).get();
		
		return bill;
	}

	@Override
	public Billing findBillByMob(String mobile) {

		Billing bill = billingRepo.findByMobile(mobile);

		return bill;
	}

}
