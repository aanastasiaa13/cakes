package com.aravina.cakes.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@AllArgsConstructor
@NoArgsConstructor
public class CartItem {

    private Long id;
    private String cakeName;
    private BigDecimal cakePrice;
    private String cakeImagePath;

    public Long getId() {
        return id;
    }

    public String getCakeName() {
        return cakeName;
    }

    public void setCakeName(String cakeName) {
        this.cakeName = cakeName;
    }

    public BigDecimal getCakePrice() {
        return cakePrice;
    }

    public void setCakePrice(BigDecimal cakePrice) {
        this.cakePrice = cakePrice;
    }

    public String getCakeImagePath() {
        return cakeImagePath;
    }

    public void setCakeImagePath(String cakeImagePath) {
        this.cakeImagePath = cakeImagePath;
    }
}
