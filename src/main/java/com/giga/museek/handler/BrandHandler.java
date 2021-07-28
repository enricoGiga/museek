package com.giga.museek.handler;

import com.giga.museek.entity.Category;
import com.giga.museek.repository.BrandReactiveRepository;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Mono;

@Component
public class BrandHandler {
final BrandReactiveRepository brandReactiveRepository;

    public BrandHandler(BrandReactiveRepository brandReactiveRepository) {
        this.brandReactiveRepository = brandReactiveRepository;
    }

    public Mono<ServerResponse> getBrandsStream(ServerRequest serverRequest) {
        return ServerResponse.ok()
                .contentType(MediaType.TEXT_EVENT_STREAM)
                .body(brandReactiveRepository.findAll(), Category.class);
    }
}
