package com.giga.museek;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import reactor.core.publisher.Flux;
import reactor.core.publisher.Mono;
import reactor.test.StepVerifier;


class MuseekApplicationTests {

    @Test
    public void backPressure() {

        Flux<Integer> finiteFlux = Flux.range(1, 10)
                .log();

        finiteFlux.subscribe((element) -> System.out.println("Element is : " + element)
                , (e) -> System.err.println("Exception is : " + e)
                , () -> System.out.println("Done")
                , (subscription -> subscription.request(10)));

    }


    @Test
    public void combineUsingMerge(){

        Flux<String> flux1 = Flux.just("A","B","C");
        Flux<String> flux2 = Flux.just("D","E","F", "K");

        Flux<String> mergedFlux = Flux.merge(flux1,flux2);

        StepVerifier.create(mergedFlux.log())
                .expectSubscription()
                .expectNext("A","B","C","D","E","F","K")
                .verifyComplete();

    }
}
