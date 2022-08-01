package com.chainsys.doctorappointmentbilling.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.doctorappointmentbilling.model.Person;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	// Doctor findById(long id);

	Person save(Person per);

	// use for adding a new Doctor
	// void deleteById(long dr_id);

	List<Person> findAll();
}
