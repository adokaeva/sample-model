package com.company.sample.entity.airports;

import com.haulmont.chile.core.datatypes.impl.EnumClass;

import javax.annotation.Nullable;


public enum Currency implements EnumClass<Integer> {

    USD(10),
    EUR(20),
    JPY(30),
    GBP(50),
    RUB(40);

    private Integer id;

    Currency(Integer value) {
        this.id = value;
    }

    public Integer getId() {
        return id;
    }

    @Nullable
    public static Currency fromId(Integer id) {
        for (Currency at : Currency.values()) {
            if (at.getId().equals(id)) {
                return at;
            }
        }
        return null;
    }
}