package org.example.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SecteurActivite implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idSecteurActivite;
	private String codeSecteurActivite;
	private String libelleSecteurActivite;
	@ManyToMany(mappedBy="secteurActivites")
	@JsonIgnore
	private Set<Fournisseur> fournisseurs;
}
