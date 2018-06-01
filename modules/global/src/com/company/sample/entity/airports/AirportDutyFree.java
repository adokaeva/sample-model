package com.company.sample.entity.airports;

import javax.persistence.Entity;
import javax.persistence.Table;
import com.haulmont.cuba.core.entity.StandardEntity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Column;

@Table(name = "SAMPLE_AIRPORT_DUTY_FREE")
@Entity(name = "sample$AirportDutyFree")
public class AirportDutyFree extends StandardEntity {
    private static final long serialVersionUID = 3166105052115757092L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "AIRPORT_ID")
    protected Airport airport;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "DUTY_FREE_ID")
    protected DutyFree dutyFree;

    @Column(name = "CURRENCY")
    protected Integer currency;

    public void setCurrency(Currency currency) {
        this.currency = currency == null ? null : currency.getId();
    }

    public Currency getCurrency() {
        return currency == null ? null : Currency.fromId(currency);
    }


    public void setDutyFree(DutyFree dutyFree) {
        this.dutyFree = dutyFree;
    }

    public DutyFree getDutyFree() {
        return dutyFree;
    }


    public void setAirport(Airport airport) {
        this.airport = airport;
    }

    public Airport getAirport() {
        return airport;
    }


}