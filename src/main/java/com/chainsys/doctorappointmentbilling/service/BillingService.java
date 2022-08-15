package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.model.Billing;
import com.chainsys.doctorappointmentbilling.repository.BillingRepository;

@Service
public class BillingService {
	@Autowired
	private BillingRepository billingRepo;

	public List<Billing> getBill() {
		List<Billing> billingList = billingRepo.findAll();
		return billingList;
	}

	@Transactional
	public Billing save(Billing bill) {
		return billingRepo.save(bill);
	}
}
