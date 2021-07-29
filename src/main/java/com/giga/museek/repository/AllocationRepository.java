package com.giga.museek.repository;

import com.giga.museek.documents.Allocation;
import org.springframework.data.mongodb.repository.ReactiveMongoRepository;

public interface AllocationRepository extends ReactiveMongoRepository<Allocation, String> {
}
