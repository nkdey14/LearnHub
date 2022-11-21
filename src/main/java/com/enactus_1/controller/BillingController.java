package com.enactus_1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.enactus_1.dto.PaymentData;
import com.enactus_1.dto.PrintBill;
import com.enactus_1.entities.Billing;
import com.enactus_1.entities.Learner;
import com.enactus_1.entities.Payment;
import com.enactus_1.services.BillingService;
import com.enactus_1.services.LearnerService;
import com.enactus_1.services.PaymentService;
import com.enactus_1.util.EmailUtil;
import com.enactus_1.util.PDFGenerator;

@Controller
public class BillingController {
	
	@Autowired
	private LearnerService learnerService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private BillingService billingService;
	
	@Autowired
	private PDFGenerator pdfGenerator;
	
	@Autowired
	private EmailUtil emailUtil;
	
	@GetMapping("/proceedPayment")
	public String continuePayment(@RequestParam("mobile") long mobile, @RequestParam("fees") String fees, Model model) {
		
		model.addAttribute("fees", fees);
		
		model.addAttribute("mobile", mobile);
		
		return "user/viewPaymentPage";
	}
	
	@PostMapping("/confirmPayment")
	public String confirmTransaction(PaymentData data, Model model) {
		
		Payment p = new Payment();
		
		p.setFees(data.getFees());
		p.setName(data.getName());
		p.setCardNum(data.getCardNum());
		p.setExpDate(data.getExpDate());
		p.setCvv(data.getCvv());
		p.setMobile(data.getMobile());
		
		paymentService.savePayment(p);
		
		model.addAttribute("msg", "Payment successful!");
				
		return "user/paymentSuccess";
	}
	
	@GetMapping("/generateBill")
	public String createBill(@RequestParam("mobile") long mobile, Model model) {
		
		Learner learner = learnerService.findLeanerByMob(mobile);
		
		model.addAttribute("learner", learner);
		
		return "admin/generateBilling";
	}
	
	@PostMapping("/saveBill")
	public String saveBillingDetails(PrintBill bill, Model model) {
		
		Billing b = new Billing();
		
		b.setFirstName(bill.getFirstName());
		b.setLastName(bill.getLastName());
		b.setGender(bill.getGender());
		b.setEmail(bill.getEmail());
		b.setMobile(bill.getMobile());
		b.setCity(bill.getCity());
		b.setCourse(bill.getCourse());
		b.setDuration(bill.getDuration());
		b.setFees(bill.getFees());
		b.setPaymentMode(bill.getPaymentMode());
		
		String filePath = "E:\\PSA SpringBoot Programs\\enactus_1\\bills\\bill"+"_"+bill.getFirstName()+"_"+bill.getLastName()+".pdf";
		
		billingService.saveBillingDetails(b);
		
		pdfGenerator.generateItinerary(bill, filePath);
		
		emailUtil.sendItinerary(bill.getEmail(), filePath);
		
		model.addAttribute("msg", "Bill generated successfully!");
		
		model.addAttribute("bill", b);
		
		return "admin/billingInfo";
		
	}	
}
