package com.giga.museek.entity;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "marca")
@Entity
public class Marca {
    @Id
    String marca;
}
