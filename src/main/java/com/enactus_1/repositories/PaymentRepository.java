package com.enactus_1.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.enactus_1.entities.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer> {

	public Payment findByMobile(long mobile);

}
