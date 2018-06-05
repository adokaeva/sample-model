package com.company.sample.entity.airports;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import java.util.List;

@NamePattern("%s|name")
@Table(name = "SAMPLE_AIRLINE")
@Entity(name = "sample$Airline")
public class Airline extends StandardEntity {
    private static final long serialVersionUID = 184458719951805556L;

    @Column(name = "NAME")
    protected String name;

    @JoinTable(name = "SAMPLE_AIRLINE_AIRPORT_LINK",
        joinColumns = @JoinColumn(name = "AIRLINE_ID"),
        inverseJoinColumns = @JoinColumn(name = "AIRPORT_ID"))
    @ManyToMany
    protected List<Airport> airports;

    public void setAirports(List<Airport> airports) {
        this.airports = airports;
    }

    public List<Airport> getAirports() {
        return airports;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}