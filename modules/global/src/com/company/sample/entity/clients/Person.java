package com.company.sample.entity.clients;

import javax.persistence.*;

@PrimaryKeyJoinColumn(name = "ID", referencedColumnName = "ID")
@DiscriminatorValue("P")
@Table(name = "SAMPLE_PERSON")
@Entity(name = "sample$Person")
public class Person extends Client {
    private static final long serialVersionUID = -5997302617008324785L;

    @Column(name = "FIRST_NAME", length = 100)
    protected String firstName;

    @Column(name = "LAST_NAME", length = 100)
    protected String lastName;

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }


}