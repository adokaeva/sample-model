package com.company.sample.entity.airports;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s|name")
@Table(name = "SAMPLE_DUTY_FREE")
@Entity(name = "sample$DutyFree")
public class DutyFree extends StandardEntity {
    private static final long serialVersionUID = -8083105759714663995L;

    @Column(name = "NAME")
    protected String name;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "dutyFree")
    protected List<AirportDutyFree> airports;

    public void setAirports(List<AirportDutyFree> airports) {
        this.airports = airports;
    }

    public List<AirportDutyFree> getAirports() {
        return airports;
    }


    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}