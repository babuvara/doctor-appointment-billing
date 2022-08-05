package com.chainsys.doctorappointmentbilling.dao;

/**
 * @author babu3107
 */
import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Billing;

@Repository
public interface BillingRepository extends CrudRepository<Billing, Integer> {

	Billing save(Billing bill);

	List<Billing> findAll();
}
