package com.giga.museek.repository;

import com.giga.museek.documents.Allocation;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;
import reactor.core.publisher.Mono;

public interface AllocationRepository extends ReactiveMongoRepository<Allocation, String> {
    Mono<Allocation> getAllocationById(String id);
}
