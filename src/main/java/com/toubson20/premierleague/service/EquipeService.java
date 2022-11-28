package com.toubson20.premierleague.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.toubson20.premierleague.model.Equipe;
import com.toubson20.premierleague.repository.EquipeRepository;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@Service
//@AllArgsConstructor
public class EquipeService  {
	
	private EquipeRepository equipeRepository;

	public Iterable<Equipe> getEquipe() {
		return equipeRepository.findAll();
	}
	

}
