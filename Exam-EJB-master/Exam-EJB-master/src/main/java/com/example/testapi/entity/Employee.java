package com.example.testapi.entity;

import javax.persistence.*;

@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "wage")
    private double wage;

    public Employee() {
    }

    public Employee(int id, String name, double wage) {
        this.id = id;
        this.name = name;
        this.wage = wage;
    }

    public Employee(String name, double wage) {
        this.name = name;
        this.wage = wage;
    }

    // Getters and Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getWage() {
        return wage;
    }

    public void setWage(double wage) {
        this.wage = wage;
    }
}
