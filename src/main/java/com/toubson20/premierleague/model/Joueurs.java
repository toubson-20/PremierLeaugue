package com.toubson20.premierleague.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Data
@Getter
@Setter
@Table(name = "joueurs")
@NoArgsConstructor
public class Joueurs {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name="nom_joueur") //first_name est le nom du champ dans la table
    private String nomJoueur;

    @Column(name="num_maillot")
    private String numMaillot;

    private String poste;
    
    @Column(name="id_equipe")
    private long idEquipe;
}
