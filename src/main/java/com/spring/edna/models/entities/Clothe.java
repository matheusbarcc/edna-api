package com.spring.edna.models.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.spring.edna.models.enums.ClotheBrand;
import com.spring.edna.models.enums.ClotheCategory;
import com.spring.edna.models.enums.ClotheGender;
import com.spring.edna.models.enums.ClotheSize;
import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UuidGenerator;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Data
public class Clothe {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @UuidGenerator
    private String id;

    @Nullable
    @Size(min = 1, max = 60)
    private String categoryOther;

    @Nullable
    @Size(min = 1, max = 60)
    private String brandOther;

    @Nullable
    @Size(min = 1, max = 60)
    private String sizeOther;

    @NotBlank(message = "Name is required.")
    private String name;

    @NotNull(message = "Price is required.")
    private Integer priceInCents;

    @Nullable
    @Size(max = 300)
    private String description;

    @NotBlank(message = "Fabric is required.")
    private String fabric;

    @NotBlank(message = "Color is required.")
    private String color;

    @NotNull(message = "Length is required.")
    private Integer lengthInCm;

    @NotNull(message = "Width is required.")
    private Integer widthInCm;

    @NotNull(message = "Category is required.")
    @Enumerated(EnumType.STRING)
    private ClotheCategory category;

    @NotNull(message = "Size is required.")
    @Enumerated(EnumType.STRING)
    private ClotheSize size;

    @NotNull(message = "Gender is required.")
    @Enumerated(EnumType.STRING)
    private ClotheGender gender;

    @NotNull(message = "Brand is required.")
    @Enumerated(EnumType.STRING)
    private ClotheBrand brand;

    @ManyToOne
    @JoinColumn(name = "store_id")
    private Store store;

    @OneToMany(mappedBy = "clothe")
    @JsonBackReference(value = "clothe-images")
    private List<ClotheImage> images;

    @OneToOne(mappedBy = "clothe")
    @JsonBackReference(value = "clothe-order")
    @Nullable
    private CustomerOrder order;

    @CreationTimestamp
    private LocalDateTime createdAt;

    private boolean deleted = false;
}
