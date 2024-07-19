/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Order {
    
    private int orderId;
    private Table table;
    private Customer customer;
    private String OrderStatus;
    private double totalAmount;
    private Discount discount;

    public Order() {
    }
    
    public Order(int orderId) {
        this.orderId = orderId;
    }
    
    public Order(int orderId, double totalAmount) {
        this.orderId = orderId;
        this.totalAmount = totalAmount;
    }
    
    public Order(Customer customer) {
        this.customer = customer;
    }

    public Order(int orderId, Table table, Customer customer, String OrderStatus, double totalAmount, Discount discount) {
        this.orderId = orderId;
        this.table = table;
        this.customer = customer;
        this.OrderStatus = OrderStatus;
        this.totalAmount = totalAmount;
        this.discount = discount;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public Table getTable() {
        return table;
    }

    public void setTable(Table table) {
        this.table = table;
    }

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getOrderStatus() {
        return OrderStatus;
    }

    public void setOrderStatus(String OrderStatus) {
        this.OrderStatus = OrderStatus;
    }

    public double getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(double totalAmount) {
        this.totalAmount = totalAmount;
    }

    public Discount getDiscount() {
        return discount;
    }

    public void setDiscount(Discount discount) {
        this.discount = discount;
    }
    
    
    
}
