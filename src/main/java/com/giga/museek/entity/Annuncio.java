package com.giga.museek.entity;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Set;
import java.util.UUID;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "annuncio")
@Entity
public class Annuncio {
    @Id
    @Column(updatable = false, nullable = false, columnDefinition = "uuid DEFAULT uuid_generate_v4()")
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(name = "UUID", strategy = "org.hibernate.id.UUIDGenerator")
    private UUID id;

    private String utente;

    private String modello;
    private String titolo;

    private String testo;
    private Long prezzo;
    private boolean prezzoSuRichiesta;

    @OneToMany(mappedBy="annuncio", cascade = CascadeType.REMOVE)
    private Set<ImmagineAnnuncio> immagineAnnuncio;


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_categoria", referencedColumnName = "id")
    private Categoria categoria;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_marca", referencedColumnName = "marca")
    private Marca marca;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_tipo_annuncio", referencedColumnName = "tipo")
    private TipoAnnuncio tipoAnnuncio;
}

