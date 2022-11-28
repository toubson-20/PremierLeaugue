package com.toubson20.premierleague.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.toubson20.premierleague.model.Equipe;

@Repository
public interface EquipeRepository extends CrudRepository<Equipe, Long> {// la classe fournie doit etre @Entity

}
