package com.aravina.cakes.model;

public enum Status {

    ACTIVE("Активный"),
    IN_PROGRESS("В процессе"),
    INACTIVE("Не активный");

    private final String name;

    Status(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

}
