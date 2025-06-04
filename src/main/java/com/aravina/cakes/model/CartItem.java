package com.aravina.cakes.model;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class CartItem {

    private Long id;
    private String cakeName;
    private String cakePrice;
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

    public String getCakePrice() {
        return cakePrice;
    }

    public void setCakePrice(String cakePrice) {
        this.cakePrice = cakePrice;
    }

    public String getCakeImagePath() {
        return cakeImagePath;
    }

    public void setCakeImagePath(String cakeImagePath) {
        this.cakeImagePath = cakeImagePath;
    }
}
