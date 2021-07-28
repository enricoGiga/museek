package com.giga.museek.repository;

import com.giga.museek.documents.Allocation;
import org.springframework.data.mongodb.repository.MongoRepository;

public interface AllocationRepository extends MongoRepository<Allocation, String> {
}
