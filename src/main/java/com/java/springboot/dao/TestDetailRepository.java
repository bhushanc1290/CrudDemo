package com.java.springboot.dao;

import java.util.Date;

import org.springframework.data.repository.CrudRepository;

import com.java.springboot.entity.TestDetail;



public interface TestDetailRepository extends CrudRepository<TestDetail, Date>{

}
