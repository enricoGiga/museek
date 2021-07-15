package com.giga.museek;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.mongodb.repository.config.EnableReactiveMongoRepositories;

@SpringBootApplication
public class MuseekApplication {

    public static void main(String[] args) {
        SpringApplication.run(MuseekApplication.class, args);
    }

}
