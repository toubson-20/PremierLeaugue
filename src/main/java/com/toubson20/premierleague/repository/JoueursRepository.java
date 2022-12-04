package com.toubson20.premierleague.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.toubson20.premierleague.model.Joueurs;

@Repository
public interface JoueursRepository extends CrudRepository<Joueurs, Long> {

	@Query(value = "SELECT NOM_JOUEUR, NUM_MAILLOT, POSTE FROM JOUEURS INNER JOIN EQUIPE \r\n"
			+ "ON JOUEURS.ID_EQUIPE = EQUIPE.ID\r\n"
			+ "WHERE NOM_EQUIPE = :nomEquipe", nativeQuery = true)
	public Iterable<Joueurs> getJoueursByEquipe(@Param("nomEquipe") String nom);
}
