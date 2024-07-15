package com.lynncode.ecommerce.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "product_category")
@Getter
@Setter
public class ProductCategory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "category_name")
    private String categoryName;

    // 一个 ProductCategory 可以包含多个 Product
    // 如果你删除一个 ProductCategory，所有属于该类别的 Product 实体也会被删除。
    // Product 实体中的 category 字段负责维护这段一对多关系。
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "category")
    private Set<Product> products;
}
