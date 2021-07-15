package com.giga.museek.entity;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//import javax.persistence.*;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
//@Table(name = "marca")
//@Entity
@Document(collation = "marca")
public class Marca {
    @Id
    String marca;
}
