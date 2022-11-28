package com.toubson20.premierleague.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.toubson20.premierleague.model.Equipe;
import com.toubson20.premierleague.service.EquipeService;
import com.toubson20.premierleague.service.EquipeService;

import lombok.AllArgsConstructor;

@RestController 
@RequestMapping("/equipe")
public class EquipeController {//exposer une resource

	@Autowired //injection
	private EquipeService equipeService;
	
	@GetMapping("/lire")
	public Iterable<Equipe> lire() {
		return equipeService.getEquipe();
	}
}
