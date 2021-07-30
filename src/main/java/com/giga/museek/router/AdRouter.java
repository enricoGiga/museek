package com.giga.museek.router;

import com.giga.museek.constants.EndPoints;
import com.giga.museek.handler.AdHandler;
import com.giga.museek.repository.AllocationRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.server.*;

import static org.springframework.web.reactive.function.server.RequestPredicates.GET;
import static org.springframework.web.reactive.function.server.RequestPredicates.accept;
import static org.springframework.web.reactive.function.server.RouterFunctions.route;
import static org.springframework.web.reactive.function.server.ServerResponse.ok;

@Configuration
public class AdRouter {
final AllocationRepository allocationRepository;

    public AdRouter(AllocationRepository allocationRepository) {
        this.allocationRepository = allocationRepository;
    }


    @Bean
    public RouterFunction<ServerResponse> brandRoute(AdHandler adHandler) {
        return route(GET(EndPoints.BRAND_STREAM).and(accept(MediaType.TEXT_EVENT_STREAM)),
                        adHandler::getBrandsStream)
                .andRoute(GET(EndPoints.BRANDS).and(accept(MediaType.APPLICATION_JSON)), adHandler::getBrands);
    }
    @Bean
    public RouterFunction<ServerResponse> allocationRoute(AdHandler adHandler) {
        return route(GET((EndPoints.ALLOCATIONS)), adHandler::getAllocations);
    }

}
