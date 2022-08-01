package com.chainsys.doctorappointmentbilling.service;

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

	public List<Billing> getbill() {
		List<Billing> billinglist = repo.findAll();
		return billinglist;
	}

	@Transactional
	public Billing save(Billing bill) {
		return repo.save(bill);
	}
}
