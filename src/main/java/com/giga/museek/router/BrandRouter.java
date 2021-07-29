package com.giga.museek.router;

import com.giga.museek.constants.EndPoints;
import com.giga.museek.handler.BrandHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;

import static org.springframework.web.reactive.function.server.RequestPredicates.GET;
import static org.springframework.web.reactive.function.server.RequestPredicates.accept;

@Configuration
public class BrandRouter {


    @Bean
    public RouterFunction<ServerResponse> brandStreamRoute(BrandHandler brandHandler) {
        return RouterFunctions
                .route(GET(EndPoints.BRAND_STREAM).and(accept(MediaType.TEXT_EVENT_STREAM)),
                        brandHandler::getBrandsStream)
                .andRoute(GET(EndPoints.BRANDS).and(accept(MediaType.APPLICATION_JSON)), brandHandler::getBrands);


    }

}
