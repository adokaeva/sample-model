package com.company.sample.web.dutyfree;

import com.company.sample.entity.airports.Airport;
import com.company.sample.entity.airports.AirportDutyFree;
import com.company.sample.entity.airports.Currency;
import com.haulmont.cuba.core.global.Metadata;
import com.haulmont.cuba.gui.WindowManager;
import com.haulmont.cuba.gui.components.AbstractEditor;
import com.company.sample.entity.airports.DutyFree;
import com.haulmont.cuba.gui.data.CollectionDatasource;
import com.haulmont.cuba.gui.data.Datasource;

import javax.inject.Inject;
import java.util.UUID;

public class DutyFreeEdit extends AbstractEditor<DutyFree> {

    @Inject
    private Metadata metadata;
    @Inject
    private Datasource<DutyFree> dutyFreeDs;
    @Inject
    private CollectionDatasource<AirportDutyFree, UUID> airportsDs;

    public void addAirport() {
        openLookup(Airport.class, items -> {
            if (!items.isEmpty()) {
                Airport airport = (Airport) items.iterator().next();
                AirportDutyFree newLink = metadata.create(AirportDutyFree.class);
                newLink.setAirport(airport);
                newLink.setDutyFree(dutyFreeDs.getItem());
                newLink.setCurrency(Currency.EUR);
                airportsDs.addItem(newLink);
            }
        }, WindowManager.OpenType.DIALOG);

    }
}