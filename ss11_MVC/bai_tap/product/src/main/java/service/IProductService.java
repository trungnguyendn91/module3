package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    List<Product> findByProductName(String name);
    Product findById(int id);
    void save(Product product);
    void update(int id, Product product);
    void remove(int id);
}
