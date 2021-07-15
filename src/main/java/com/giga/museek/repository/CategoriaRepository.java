package com.giga.museek.repository;


import com.giga.museek.entity.Categoria;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoriaRepository extends ReactiveMongoRepository<Categoria, Integer> {
}
