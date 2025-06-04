package com.aravina.cakes.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.security.DigestException;

@AllArgsConstructor
@NoArgsConstructor
public class Order {

    private Long id;
    private String fio;
    private String cakesName;
    private String address;
    private int count;
    private BigDecimal cost;
    private Status status;

    public Long getId() {
        return id;
    }

    public String getFio() {
        return fio;
    }

    public void setFio(String fio) {
        this.fio = fio;
    }

    public String getCakesName() {
        return cakesName.replaceAll(";", "<br>");
    }

    public void setCakesName(String cakesName) {
        this.cakesName = cakesName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public BigDecimal getCost() {
        return cost;
    }

    public void setCost(BigDecimal cost) {
        this.cost = cost;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }
}
