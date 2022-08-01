package com.chainsys.projectwork.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.projectwork.pojo.Billing;




@Repository
public interface BillingRepository extends CrudRepository<Billing, Long> {
	// Doctor findById(long id);

	Billing save(Billing thebill);

	// use for adding a new Doctor
	// void deleteById(long dr_id);

	List<Billing> findAll();
}
