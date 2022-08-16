package com.chainsys.doctorappointmentbilling.repository;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Billing;

@Repository
public interface BillingRepository extends CrudRepository<Billing, Integer> {

	@SuppressWarnings("unchecked")
	Billing save(Billing bill);

	List<Billing> findAll();

	Billing findByBillId(int id);
}
