package com.giga.museek.handler;

import com.giga.museek.documents.Allocation;
import com.giga.museek.documents.Brand;
import com.giga.museek.repository.AllocationRepository;
import com.giga.museek.repository.BrandReactiveRepository;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;

import java.util.Comparator;


@Component
public class AdHandler {
    final BrandReactiveRepository brandReactiveRepository;
    final AllocationRepository allocationRepository;


    public AdHandler(BrandReactiveRepository brandReactiveRepository, AllocationRepository allocationRepository) {
        this.brandReactiveRepository = brandReactiveRepository;

        this.allocationRepository = allocationRepository;
    }

    public Mono<ServerResponse> getBrandsStream(ServerRequest serverRequest) {
        return ServerResponse.ok()
                .contentType(MediaType.TEXT_EVENT_STREAM)
                .body(brandReactiveRepository.findAll(), Brand.class);
    }

    public Mono<ServerResponse> getBrands(ServerRequest serverRequest) {
        String currentUserId = serverRequest.headers().header("cur_user_id").get(0);
        return ServerResponse.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(
                        brandReactiveRepository.findAll().sort(Comparator.comparing(obj -> obj.getId().toLowerCase())), Brand.class
                );
    }

    public Mono<ServerResponse> getAllocations(ServerRequest serverRequest) {
        return ServerResponse.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(
                        allocationRepository.findAll().sort(Comparator.comparing(obj -> obj.getId().toLowerCase())), Allocation.class
                );
    }

}
