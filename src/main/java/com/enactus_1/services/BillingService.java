package com.enactus_1.services;

import java.util.List;

import com.enactus_1.entities.Billing;

public interface BillingService {

	public void saveBillingDetails(Billing b);

	public List<Billing> findAllBills();

	public Billing findBillById(int id);

	public Billing findBillByMob(String mobile);

}
