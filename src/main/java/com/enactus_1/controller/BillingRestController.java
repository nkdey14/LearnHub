package com.enactus_1.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.enactus_1.entities.Billing;
import com.enactus_1.repositories.BillingRepository;

// Web Services Layer

@RestController
@RequestMapping("/api/bills")
public class BillingRestController {

	@Autowired
	private BillingRepository billingRepo;
	
	// http://localhost:8083/Enactus/api/bills
	
	@GetMapping
	public List<Billing> getAllBills() {
		
		List<Billing> bills = billingRepo.findAll();
		
		return bills;
	}
	
	@PostMapping
	public void saveBill(@RequestBody Billing b) {
		
		billingRepo.save(b);
	}
	
	@PutMapping
	public void updateBill(@RequestBody Billing b) {
		
		billingRepo.save(b);
	}
	
	// http://localhost:8083/Enactus/api/bills/delete/8
	
	@DeleteMapping("/delete/{id}")
	public void deleteBill(@PathVariable("id") int id) {
		
		billingRepo.deleteById(id);
	}
	
	// http://localhost:8083/Enactus/api/bills/bill/7
	
	// Exposing web services
	
	@GetMapping("/bill/{id}")
	public Billing getBillingInfo(@PathVariable("id") int id) {
		
		Billing bill = billingRepo.findById(id).get();
		
		return bill;
	}
}
