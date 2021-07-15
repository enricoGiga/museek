//package com.giga.museek.repository;
//
//import com.giga.museek.entity.Categoria;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.test.autoconfigure.data.mongo.DataMongoTest;
//import reactor.core.publisher.Flux;
//import reactor.test.StepVerifier;
//
//import java.util.Arrays;
//import java.util.List;
//
//
//@DataMongoTest
//public class CategoriaRepositoryTest {
//
//
//    @Autowired
//    CategoriaRepository categoriaRepository;
//
//    List<Categoria> categoriaList = Arrays.asList(new Categoria(1,"Samsung TV"),
//            new Categoria(2,"LG TV"),
//            new Categoria(3,"Apple Watch"));
//
//    @BeforeEach
//    public void setUp(){
//
//
//    }
//
//
//    @Test
//    public void getAllItems(){
//        categoriaRepository.deleteAll()
//                .thenMany(Flux.fromIterable(categoriaList))
//                .flatMap(categoriaRepository::save)
//                .doOnNext((item -> {
//                    System.out.println("Inserted Item is :" + item);
//                }))
//                .blockLast();
//
//        StepVerifier.create(categoriaRepository.findAll()) // 4
//                .expectSubscription()
//                .expectNextCount(5)
//                .verifyComplete();
//    }
//
//    @Test
//    public void getItemByID(){
//
//        StepVerifier.create(categoriaRepository.findById(1))
//                .expectSubscription()
//                .expectNextMatches((item -> item.getNome().equals("Samsung TV")))
//                .verifyComplete();
//
//
//    }
//
//
//}
