package com.company.sample.entity.clients;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|name")
@DiscriminatorColumn(name = "DTYPE", discriminatorType = DiscriminatorType.STRING)
@Inheritance(strategy = InheritanceType.JOINED)
@DiscriminatorValue("C")
@Table(name = "SAMPLE_CLIENT")
@Entity(name = "sample$Client")
public class Client extends StandardEntity {
    private static final long serialVersionUID = -6456966805790757110L;

    @Column(name = "NAME", nullable = false)
    protected String name;

    @Column(name = "EMAIL", length = 100)
    protected String email;

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }


}