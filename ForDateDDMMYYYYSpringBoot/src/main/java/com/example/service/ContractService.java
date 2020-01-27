package com.example.service;

import java.util.List;
import com.example.model.Contract;

public interface ContractService {

	List<Contract> findAll();

	Contract findById(int id);

	void insert(Contract contract);

	void edit(Contract contract);

	void delete(int id);
}
