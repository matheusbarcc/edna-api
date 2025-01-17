package com.spring.edna.models.mappers;

import com.spring.edna.models.dtos.ClotheDetailsDTO;
import com.spring.edna.models.dtos.ClotheSummaryDTO;
import com.spring.edna.models.entities.Clothe;
import com.spring.edna.models.entities.Store;

import java.util.ArrayList;
import java.util.List;

public class ClotheMapper {

    public static ClotheDetailsDTO toClotheDetailsDTO(Clothe clothe) {
        Store store = clothe.getStore();
        return new ClotheDetailsDTO(
                clothe.getId(),
                clothe.getName(),
                clothe.getPriceInCents(),
                clothe.getDescription(),
                clothe.getSize(),
                clothe.getGender(),
                clothe.getFabric(),
                clothe.getColor(),
                clothe.getLengthInCm(),
                clothe.getWidthInCm(),
                clothe.getBrand(),
                clothe.getCategory(),
                store != null ? store.getStoreName() : "N/A"
        );
    }

    public static List<ClotheSummaryDTO> toClotheSummaryDTOList(List<Clothe> clothes) {
        List<ClotheSummaryDTO> clotheSummaryDTOList = new ArrayList<>();

        for (Clothe c : clothes) {
            Store store = c.getStore();
            ClotheSummaryDTO dto = new ClotheSummaryDTO(
                    c.getId(),
                    c.getImages() != null && !c.getImages().isEmpty() ? c.getImages().get(0).getUrl() : "default-clothe-image-url",
                    c.getName(),
                    store != null ? "mock-store-image-url" : "default-store-image-url",
                    c.getPriceInCents(),
                    c.getSize(),
                    c.getBrand()
            );

            clotheSummaryDTOList.add(dto);
        }

        return clotheSummaryDTOList;
    }
}
