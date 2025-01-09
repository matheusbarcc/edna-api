package com.spring.edna.services;

import com.spring.edna.exception.EdnaException;
import com.spring.edna.models.entities.Store;
import com.spring.edna.models.repositories.StoreRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UpdateStore {

    @Autowired
    private StoreRepository storeRepository;

    public void execute(Store store) throws EdnaException {
        Store storeInDatabase = storeRepository.getById(store.getId());

        store.setCnpj(storeInDatabase.getCnpj());
        store.setCreatedAt(storeInDatabase.getCreatedAt());

        storeRepository.save(store);
    }
}
