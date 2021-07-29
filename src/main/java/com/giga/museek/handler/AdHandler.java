package com.giga.museek.handler;

import com.giga.museek.documents.Brand;
import com.giga.museek.repository.BrandReactiveRepository;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Component;
import org.springframework.web.reactive.function.server.ServerRequest;
import org.springframework.web.reactive.function.server.ServerResponse;
import reactor.core.publisher.Mono;

import java.util.Comparator;
import java.util.List;
import java.util.Locale;


@Component
public class AdHandler {
    final BrandReactiveRepository brandReactiveRepository;


    public AdHandler(BrandReactiveRepository brandReactiveRepository) {
        this.brandReactiveRepository = brandReactiveRepository;

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

}
