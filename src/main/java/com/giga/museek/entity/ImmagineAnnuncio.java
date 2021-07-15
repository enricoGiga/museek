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
//@Table(name = "immagine_annuncio")
//@Entity
@Document(collation = "immagineAnnuncio")
public class ImmagineAnnuncio {

    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idImmagineAnnuncio;
//    @Lob
//    @Column(length=100000)
    private byte[] data;

//    @ManyToOne
//    @JoinColumn(name = "id_annuncio")
//    private Annuncio annuncio;
}
