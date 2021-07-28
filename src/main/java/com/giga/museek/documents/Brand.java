package com.giga.museek.documents;

import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;


@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Document
// Marca
public class Brand {
    @Id
    String id;
}
