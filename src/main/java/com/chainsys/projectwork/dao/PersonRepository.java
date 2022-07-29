package com.chainsys.projectwork.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.projectwork.pojo.Person;


@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
	// Doctor findById(long id);

	Person save(Person thedoc);

	// use for adding a new Doctor
	// void deleteById(long dr_id);

	List<Person> findAll();
}
