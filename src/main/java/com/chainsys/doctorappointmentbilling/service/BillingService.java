package com.chainsys.doctorappointmentbilling.service;

/**
 * @author babu3107
 */
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.doctorappointmentbilling.dao.BillingRepository;
import com.chainsys.doctorappointmentbilling.model.Billing;

@Service
public class BillingService {
	@Autowired
	private BillingRepository repo;

	public List<Billing> getBill() {
		List<Billing> billingList = repo.findAll();
		return billingList;
	}

	@Transactional
	public Billing save(Billing bill) {
		return repo.save(bill);
	}
}
