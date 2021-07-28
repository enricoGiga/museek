package com.giga.museek.repository;

import com.giga.museek.documents.Brand;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;

public interface BrandReactiveRepository extends ReactiveMongoRepository<Brand, String> {
}
