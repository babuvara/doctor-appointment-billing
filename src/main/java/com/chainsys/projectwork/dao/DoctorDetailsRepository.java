package com.chainsys.projectwork.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.projectwork.pojo.DoctorDetails;


@Repository
public interface DoctorDetailsRepository extends CrudRepository<DoctorDetails, Long> {
	// Doctor findById(long id);

	DoctorDetails save(DoctorDetails thedoc);

	// use for adding a new Doctor
	// void deleteById(long dr_id);

	List<DoctorDetails> findAll();
}
