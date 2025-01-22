package com.spring.edna.factories;

import com.spring.edna.models.entities.Address;
import com.spring.edna.models.entities.Store;

import java.util.UUID;

public class AddressFactory {
    public static Address create(Store store) {
        Address a = new Address();
        a.setStore(store);
        a.getStore().setId(UUID.randomUUID().toString());
        a.setNumber(String.valueOf((int) (Math.random() * 100)));
        a.setCep("88064-001");
        a.setStreet("Street " + UUID.randomUUID());
        a.setNeighborhood("Neighborhood " + UUID.randomUUID());
        a.setCity("City " + UUID.randomUUID());

        return a;
    }
}