package com.enactus_1.services;

import com.enactus_1.entities.Payment;

public interface PaymentService {

	public void savePayment(Payment p);

	public Payment findPaymentByMob(long mobile);

}
