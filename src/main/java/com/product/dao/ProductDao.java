package com.product.dao;

import com.product.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductDao implements IProductDao{
    public static List<Product> products = new ArrayList<>();

    public static List<Product> getProducts() {
        return products;
    }

    public static void setProducts(List<Product> products) {
        ProductDao.products = products;
    }

    static {
        products.add(new Product(1, "Iphone10", 10000, "new", "img"));
        products.add(new Product(2, "Iphone11", 20000, "new", "img"));
        products.add(new Product(3, "Iphone12", 30000, "new", "img"));
        products.add(new Product(4, "Iphone13", 40000, "new", "img"));
    }

    @Override
    public List<Product> getAllProduct() {
        return products;
    }

    @Override
    public void add(Product product) {
        products.add(product);
    }

    @Override
    public void edit(int id, Product product) {
        int index = searchIndexById(id);
        products.set(index, product);
    }

    @Override
    public void delete(int id) {
        int index = searchIndexById(id);
        products.remove(index);
    }

    @Override
    public Product searchProductById(int id) {
        int index = searchIndexById(id);
        return products.get(index);
    }

    private int searchIndexById(int id) {
        int index = -1;
        for (int i = 0; i < products.size(); i++) {
            if (id == products.get(i).getId()) {
                index = i;
                break;
            }
        }
        return index;
    }
}
