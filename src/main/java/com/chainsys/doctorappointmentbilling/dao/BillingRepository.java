package com.chainsys.doctorappointmentbilling.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Billing;

@Repository
public interface BillingRepository extends CrudRepository<Billing, Long> {

	Billing save(Billing bill);

	List<Billing> findAll();
}
