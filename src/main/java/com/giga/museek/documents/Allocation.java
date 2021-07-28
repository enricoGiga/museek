package com.giga.museek.documents;

import com.giga.museek.entity.Category;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

//import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Document
// REPARTO
public class Allocation {
    @Id
    String id;
    List<Category> categories;

}
