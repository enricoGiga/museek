package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "tipo_annuncio")
@Entity
public class TipoAnnuncio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idTipoAnnuncio;
    @Column( columnDefinition = "varchar(100)")
    String tipo;
}
