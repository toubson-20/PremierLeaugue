package com.toubson20.premierleague.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

//@Data //annotation Lombok qui s'occupe d'ajouter les getters et setters automatiqment
@Entity // indique que la classe correspond à une table de la BD
@Table(name = "equipe") // indique le nom de la table associée
@Setter
@Getter
@NoArgsConstructor

public class Equipe {

	@Id //correspond à la clé primaire de la table
	@GeneratedValue(strategy = GenerationType.IDENTITY) // car l'id est auto-incrément
	private long id;
	
	@Column(name="nom_equipe") //first_name est le nom du champ dans la table
    private String nomEquipe;

    @Column(name="nom_stade")
    private String nomStade;

    private String ville;
}
