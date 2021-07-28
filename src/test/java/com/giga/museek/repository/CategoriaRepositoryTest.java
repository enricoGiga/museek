package com.giga.museek.repository;

import com.giga.museek.entity.Category;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.data.mongo.DataMongoTest;
import org.springframework.test.context.TestPropertySource;
import reactor.core.publisher.Flux;
import reactor.test.StepVerifier;

import java.util.Arrays;
import java.util.List;


@DataMongoTest
public class CategoriaRepositoryTest {


    @Autowired
    CategoryRepository categoriaRepository;

    List<Category> categoriaList = Arrays.asList(new Category("0","Samsung TV"),
            new Category("1","LG TV"),
            new Category("2","Apple Watch"));

    @BeforeEach
    public void setUp(){


    }


    @Test
    public void getAllItems(){
        categoriaRepository.deleteAll()
                .thenMany(Flux.fromIterable(categoriaList))
                .flatMap(categoriaRepository::save)
                .doOnNext((item -> {
                    System.out.println("Inserted Item is :" + item);
                }))
                .blockLast();

        StepVerifier.create(categoriaRepository.findAll()) // 4
                .expectSubscription()
                .expectNextCount(5)
                .verifyComplete();
    }

    @Test
    public void getItemByID(){

        StepVerifier.create(categoriaRepository.findById("1"))
                .expectSubscription()
                .expectNextMatches((item -> item.getNome().equals("LG TV")))
                .verifyComplete();
    }

    @Test()
    void getCategoryByNome() {
        StepVerifier.create(categoriaRepository.findCategoriesByNome("Cappellini"))
                .expectSubscription()
                .expectNextMatches((item -> item.getNome().equals("Cappellini")))
                .verifyComplete();
    }


}
