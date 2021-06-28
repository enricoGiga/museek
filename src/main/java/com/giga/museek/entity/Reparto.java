package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "reparto")
@Entity
public class Reparto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Integer id;
    @Column(nullable = false)
    String nome;
    @OneToMany(mappedBy="reparto", cascade = CascadeType.REMOVE)
    private Set<Categoria> categorias;
}
