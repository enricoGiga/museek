package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;
@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "immagine_annuncio")
@Entity
public class ImmagineAnnuncio {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idImmagineAnnuncio;
    @Lob
    @Column(length=100000)
    private byte[] data;

    @ManyToOne
    @JoinColumn(name = "id_annuncio")
    private Annuncio annuncio;
}
