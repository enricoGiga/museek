//package com.giga.museek.controller;
//
//import com.giga.museek.constants.EndPoints;
//import com.giga.museek.documents.Brand;
//import com.giga.museek.repository.BrandRepository;
//import org.springframework.http.MediaType;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import reactor.core.publisher.Flux;
//import reactor.core.publisher.Mono;
//
//@Controller
//public class BrandController {
//
//    final BrandRepository brandRepository;
//
//    public BrandController(BrandRepository brandRepository) {
//        this.brandRepository = brandRepository;
//    }
////
//    @GetMapping(value = EndPoints.BRANDS)
//    public Mono<Brand> getUsers() {
//        return Mono.just(new Brand("test"));
//    }
//}
