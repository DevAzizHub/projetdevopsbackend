package org.example.services;

import org.example.entities.CategorieProduit;

import java.util.List;


public interface ICategorieProduitService {

	List<CategorieProduit> retrieveAllCategorieProduits();

	CategorieProduit addCategorieProduit(CategorieProduit cp);

	void deleteCategorieProduit(Long id);

	CategorieProduit updateCategorieProduit(CategorieProduit cp);

	CategorieProduit retrieveCategorieProduit(Long id);

}
