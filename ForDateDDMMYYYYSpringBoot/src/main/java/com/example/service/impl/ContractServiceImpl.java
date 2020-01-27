package com.example.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.model.Contract;
import com.example.repository.ContractRepository;
import com.example.service.ContractService;

@Service
public class ContractServiceImpl implements ContractService {

	@Autowired
	private ContractRepository contractRepository;

	@Override
	public List<Contract> findAll() {

		return (List<Contract>) contractRepository.findAll();
	}

	@Override
	public Contract findById(int id) {

		return contractRepository.findById(id).get();
	}

	@Override
	public void insert(Contract contract) {
		contractRepository.save(contract);
	}

	@Override
	public void edit(Contract contract) {
		contractRepository.save(contract);

	}

	@Override
	public void delete(int id) {
		contractRepository.deleteById(id);

	}

}
