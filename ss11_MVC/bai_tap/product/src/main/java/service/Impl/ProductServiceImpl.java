package service.Impl;

import model.Product;
import service.ProductService;

import java.util.*;

public class ProductServiceImpl implements ProductService {
    private static Map<Integer, Product> products = new HashMap<>();
    static {

        products.put(1,new Product(1,"IPxs max",10000000,"Smart phone", "Apple"));
        products.put(2,new Product(2,"IP12 pro",19000000,"Smart phone", "Apple"));
        products.put(3,new Product(3,"Ipad",14000000,"Tablet", "Apple"));
        products.put(4,new Product(4,"Samsung galaxy",9000000,"Smart phone", "Sam sung"));
        products.put(5,new Product(5,"Mac book 9",20000000,"Laptop", "Apple"));

    }




    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public List<Product> findByProductName(String name) {
        List<Product> product = new ArrayList<>();

        for (Product p : products.values()) {
            if (p.getName().toLowerCase().contains(name.toLowerCase())) {
                product.add(p);
            }
        }
        return product;
    }

    @Override
    public Product findById(int id) {
        return  products.get(id);
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(),product);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }


}
