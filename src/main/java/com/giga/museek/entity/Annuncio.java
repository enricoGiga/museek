package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "annuncio")
@Entity
public class Annuncio {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long idAnnuncio;

    private String owner;

    private String modello;
    private String titolo;
    @Lob
    private String testo;
    private Long prezzo;
    private boolean prezzoSuRichiesta;

    @OneToMany(mappedBy="annuncio", cascade = CascadeType.REMOVE)
    private Set<ImmagineAnnuncio> immagineAnnuncio;
}
