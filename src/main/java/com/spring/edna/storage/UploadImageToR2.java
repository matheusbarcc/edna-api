package com.spring.edna.storage;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.spring.edna.exception.EdnaException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;

@Service
public class UploadImageToR2 {

    @Autowired
    private AmazonS3 s3;

    @Value("${cloudfare.bucket.name}")
    private String bucketName;

    public String execute(MultipartFile file) throws EdnaException, IOException {
        if (file.getContentType() == null || !file.getContentType().matches("image/(jpeg|jpg|png)")) {
            throw new EdnaException("Invalid file format! Only JPEG, JPG or PNG are allowed.", HttpStatus.BAD_REQUEST);
        }

        ObjectMetadata metadata = new ObjectMetadata();
        metadata.setContentType(file.getContentType());

        String uniqueFileName = UUID.randomUUID() + "-" + file.getOriginalFilename();

        s3.putObject(bucketName, uniqueFileName, file.getInputStream(), metadata);

        return uniqueFileName;
    }
}
