package com.example.repository;

import org.springframework.data.repository.CrudRepository;
import com.example.model.Contract;

public interface ContractRepository extends CrudRepository<Contract, Integer> {

}
