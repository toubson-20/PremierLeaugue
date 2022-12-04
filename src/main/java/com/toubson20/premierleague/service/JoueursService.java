package com.toubson20.premierleague.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.toubson20.premierleague.model.Joueurs;
import com.toubson20.premierleague.repository.JoueursRepository;

import lombok.AllArgsConstructor;
import lombok.Data;

@Service
@AllArgsConstructor
public class JoueursService {

	@Autowired
	private JoueursRepository joueursRepository;
	
	public Iterable<Joueurs> getJoueurs(){
		return joueursRepository.findAll();
	}
	
	public Iterable<Joueurs> getJoueursByTeam(String nom){
		return joueursRepository.getJoueursByEquipe(nom);
	}
}
