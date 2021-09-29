package com.product.service;

import com.product.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllProduct();

    void add(Product product);

    void edit(int id, Product product);

    void delete(int id);

    Product searchProductById(int id);
}
