package com.spring.edna.models.entities;

import com.spring.edna.models.enums.OrderStatus;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UuidGenerator;

import java.time.LocalDateTime;

@Entity
@Data
public class CustomerOrder {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @UuidGenerator
    private String id;

    @Enumerated(EnumType.STRING)
    private OrderStatus status = OrderStatus.PENDING;

    @ManyToOne
    @JoinColumn(name = "customer_id")
    @NotNull(message = "Customer is required.")
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "store_id")
    @NotNull(message = "Store is required.")
    private Store store;

    @OneToOne
    @JoinColumn(name = "clothe_id")
    @NotNull(message = "Clothe is required.")
    private Clothe clothe;

    @CreationTimestamp
    private LocalDateTime createdAt;
}
