package com.company.sample.entity.airports;

import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;

import javax.persistence.*;
import java.util.List;

@NamePattern("%s|name")
@Table(name = "SAMPLE_AIRPORT")
@Entity(name = "sample$Airport")
public class Airport extends StandardEntity {
    private static final long serialVersionUID = 731043808044610486L;

    @Column(name = "NAME")
    protected String name;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "airport")
    @OrderBy("name")
    protected List<Terminal> terminals;

    @JoinTable(name = "SAMPLE_AIRLINE_AIRPORT_LINK",
        joinColumns = @JoinColumn(name = "AIRPORT_ID"),
        inverseJoinColumns = @JoinColumn(name = "AIRLINE_ID"))
    @ManyToMany
    protected List<Airline> airlines;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "airport")
    protected List<AirportDutyFree> dutyFreeShops;

    public void setDutyFreeShops(List<AirportDutyFree> dutyFreeShops) {
        this.dutyFreeShops = dutyFreeShops;
    }

    public List<AirportDutyFree> getDutyFreeShops() {
        return dutyFreeShops;
    }


    public void setAirlines(List<Airline> airlines) {
        this.airlines = airlines;
    }

    public List<Airline> getAirlines() {
        return airlines;
    }


    public void setTerminals(List<Terminal> terminals) {
        this.terminals = terminals;
    }

    public List<Terminal> getTerminals() {
        return terminals;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
