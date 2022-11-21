package com.enactus_1.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.enactus_1.entities.Payment;
import com.enactus_1.repositories.PaymentRepository;

@Service
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	private PaymentRepository paymentRepo;

	@Override
	public void savePayment(Payment p) {
		
		paymentRepo.save(p);
	}

	@Override
	public Payment findPaymentByMob(long mobile) {
		
		Payment payment = paymentRepo.findByMobile(mobile);
		
		return payment;
	}
}
