package org.example.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.example.entities.Stock;

import java.util.List;

@Repository
public interface StockRepository extends JpaRepository<Stock, Long> {
	

	
	
	
	
	
	
	
	
	
	
	
	@Query("SELECT s FROM Stock s where s.qte< s.qteMin")
	List<Stock> retrieveStatusStock();
}
