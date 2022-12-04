package com.toubson20.premierleague.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.toubson20.premierleague.model.Joueurs;
import com.toubson20.premierleague.service.JoueursService;

import lombok.AllArgsConstructor;

@RestController
@RequestMapping("/joueurs")
@AllArgsConstructor
public class JoueursController {

	@Autowired
	private JoueursService serviceJoueurs;
	
	@GetMapping("/lire")
	public Iterable<Joueurs> getJoueurs(){
		return serviceJoueurs.getJoueurs();
	}
	
	@PutMapping("/team/{nom}")
	public Iterable<Joueurs> joueursByTeam(@PathVariable String nom){
		return serviceJoueurs.getJoueursByTeam(nom);
	}
}
