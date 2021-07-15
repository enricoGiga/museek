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
//@Table(name = "categoria")
//@Entity
@Document(collation = "categoria")
public class Categoria {
    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
//    @Column(nullable = false)
    String nome;
//    @ManyToOne
//    @JoinColumn(name = "id_reparto", referencedColumnName = "id")
//     Reparto reparto;

}
