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
//@Table(name = "tipo_annuncio")
//@Entity
@Document(collection = "tipoAnnuncio")
public class TipoAnnuncio {
    @Id
    String tipo;
}
