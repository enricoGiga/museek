package com.giga.museek.router;

import com.giga.museek.handler.AnnuncioHandler;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.MediaType;
import org.springframework.web.reactive.function.server.RequestPredicates;
import org.springframework.web.reactive.function.server.RouterFunction;
import org.springframework.web.reactive.function.server.RouterFunctions;
import org.springframework.web.reactive.function.server.ServerResponse;

@Configuration
public class AnnuncioRouter {

    @Bean
    public RouterFunction<ServerResponse> AnnuncioRoute(AnnuncioHandler annuncioHandler) {

        return RouterFunctions
                .route(RequestPredicates.GET("/flux").and(RequestPredicates.accept(MediaType.TEXT_PLAIN)), annuncioHandler::flux);
    }
}
