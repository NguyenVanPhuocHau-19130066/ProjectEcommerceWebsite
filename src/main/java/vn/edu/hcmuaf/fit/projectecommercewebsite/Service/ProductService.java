package vn.edu.hcmuaf.fit.projectecommercewebsite.Service;

import vn.edu.hcmuaf.fit.projectecommercewebsite.beans.Product;
import vn.edu.hcmuaf.fit.projectecommercewebsite.dao.ProductDao;

import java.util.ArrayList;

public class ProductService {
    private static ProductService instance;
    public ProductService(){

    }
    public static ProductService getInstance(){
        if(instance==null){
            instance=new ProductService();
        }
        return instance;
    }
    public ArrayList<Product> getProduct(){
        return new ProductDao().getProduct();
    }
    public ArrayList<Product> filterProduct(String category){
        return new ProductDao().filterProduct(category);
    }
    public ArrayList<Product> getProductNew(){
        return new ProductDao().getProductNew();
    }
    public ArrayList<Product> getProductLast(){
        return new ProductDao().getProductLast();
    }
    public Product getDetailProduct(String id_product){
        return new ProductDao().getDetailProduct(id_product);
    }
    public static void main(String[] args) {
        ProductService pr = new ProductService();
        for( Product p :pr.getProductNew()){
            System.out.println(p.toString());
        }
    }



}
