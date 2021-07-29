package com.giga.museek.controller;

import com.giga.museek.constants.EndPoints;
import com.giga.museek.documents.Brand;
import com.giga.museek.repository.BrandRepository;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


import java.util.List;

@Controller
public class BrandController {

    final BrandRepository brandRepository;

    public BrandController(BrandRepository brandRepository) {
        this.brandRepository = brandRepository;
    }

    @GetMapping(EndPoints.BRANDS)
    public List<Brand> getUsers() {
        return List.of(new Brand("ciao"));
        // return brandRepository.findAll();
    }
}
