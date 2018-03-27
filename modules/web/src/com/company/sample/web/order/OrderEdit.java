package com.company.sample.web.order;

import com.company.sample.entity.clients.Company;
import com.company.sample.entity.clients.Person;
import com.haulmont.cuba.gui.components.*;
import com.company.sample.entity.order.Order;
import com.haulmont.cuba.gui.data.CollectionDatasource;

import javax.inject.Inject;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.UUID;

public class OrderEdit extends AbstractEditor<Order> {

    @Inject
    private OptionsGroup clientTypeField;
    @Inject
    private LookupPickerField clientField;
    @Inject
    private CollectionDatasource<Company, UUID> companiesDs;
    @Inject
    private CollectionDatasource<Person, UUID> peopleDs;

    @Override
    protected void postInit() {
        // Currently edited entity
        Order order = getItem();

        // Options for the OptionsGroup selecting a Client type
        Map<String, Object> clientTypes = new LinkedHashMap<>();
        clientTypes.put("Company", Company.class);
        clientTypes.put("Person", Person.class);
        clientTypeField.setOptionsMap(clientTypes);

        // If a Client is not selected yet, switch to Company type. Otherwise use the concrete Client type.
        Class clientType = order.getClient() != null ? order.getClient().getClass() : Company.class;
        clientTypeField.setValue(clientType);
        initClientField(clientType);

        // Add a listener to re-initialize the Client lookup field when a user changes the Client type
        clientTypeField.addValueChangeListener(e -> {
            // Reset the value when the type changes
            clientField.setValue(null);
            initClientField((Class) e.getValue());
        });
    }

    private void initClientField(Class clientType) {
        CollectionDatasource optionsDs;
        String lookupScreenId;
        if (clientType == Company.class) {
            optionsDs = companiesDs;
            lookupScreenId = "sample$Company.browse";
        } else {
            optionsDs = peopleDs;
            lookupScreenId = "sample$Person.browse";
        }
        // Set an options datasource for the drop-down list
        clientField.setOptionsDatasource(optionsDs);
        // Set a lookup screen id
        Action action = clientField.getActionNN(PickerField.LookupAction.NAME);
        ((PickerField.LookupAction) action).setLookupScreen(lookupScreenId);
    }
}