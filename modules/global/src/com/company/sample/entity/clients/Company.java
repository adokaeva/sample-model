package com.company.sample.entity.clients;

import javax.persistence.*;

@PrimaryKeyJoinColumn(name = "ID", referencedColumnName = "ID")
@DiscriminatorValue("M")
@Table(name = "SAMPLE_COMPANY")
@Entity(name = "sample$Company")
public class Company extends Client {
    private static final long serialVersionUID = -5837550804647574153L;

    @Column(name = "INDUSTRY")
    protected String industry;

    public void setIndustry(String industry) {
        this.industry = industry;
    }

    public String getIndustry() {
        return industry;
    }


}