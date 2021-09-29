package com.product.service;

import com.product.dao.IProductDao;
import com.product.dao.ProductDao;
import com.product.model.Product;

import java.util.List;

public class ProductServiceImpl implements ProductService{
    IProductDao products =  new ProductDao();

    @Override
    public List<Product> getAllProduct() {
        return products.getAllProduct();
    }

    @Override
    public void add(Product product) {
        products.add(product);
    }

    @Override
    public void edit(int id, Product product) {
        products.edit(id, product);
    }

    @Override
    public void delete(int id) {
        products.delete(id);
    }

    @Override
    public Product searchProductById(int id) {
        return products.searchProductById(id);
    }
}
