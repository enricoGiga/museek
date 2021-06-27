package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "categoria")
@Entity
public class Categoria {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer idCategoria;
    @Column(nullable = false)
    String nome;
    @ManyToOne
    @JoinColumn(name = "id_reparto")
    private Reparto reparto;

}
