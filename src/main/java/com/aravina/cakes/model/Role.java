package com.aravina.cakes.model;

public enum Role {
    ADMIN("Администратор"),
    USER("Пользователь");

    private final String name;

    Role(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
