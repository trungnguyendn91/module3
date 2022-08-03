package repository;

import model.Product;

import java.util.List;

public interface ProductRepository {
    List<Product> findAll();
    List<Product> findByProductName(String name);
    Product findById(int id);
    void save(Product product);
    void update(int id, Product product);
    void remove(int id);
}
