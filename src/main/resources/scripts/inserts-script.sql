INSERT INTO edna.customer (
    id, created_at, email, "password", phone, cpf, name
) VALUES
      ('d290f1ee-6c54-4b01-90e6-d701748f0851', CURRENT_TIMESTAMP, 'joao.silva@example.com', 'password123', '11987654321', '48750168088', 'João Silva'),
      ('2a6fa6dd-8b1f-4d3d-97cb-20adcf11cc74', CURRENT_TIMESTAMP, 'maria.oliveira@example.com', 'password456', '11987654322', '82416611003', 'Maria Oliveira'),
      ('3b9f0b7c-a7e2-47c5-bc88-9f2522d6e78e', CURRENT_TIMESTAMP, 'pedro.souza@example.com', 'password789', '11987654323', '87024830093', 'Pedro Souza'),
      ('4c8e1d08-5ae7-4b66-8c6b-563d44f872ed', CURRENT_TIMESTAMP, 'ana.costa@example.com', 'password101', '11987654324', '94448025071', 'Ana Costa'),
      ('5d7d9e6f-8c4d-4c32-b0d5-372f9eb7fd43', CURRENT_TIMESTAMP, 'carla.pereira@example.com', 'password202', '11987654325', '09394763040', 'Carla Pereira');

INSERT INTO edna.store (
    id, created_at, email, "password", phone, cnpj, store_name, target_customer
) VALUES
      ('6e1f8c1e-d229-4e98-99c2-7a6239a8b531', CURRENT_TIMESTAMP, 'brecho.bella@example.com', 'securepass1', '11976543210', '87736276000110', 'Brechó Bella', 'FEMALE'),
      ('7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632', CURRENT_TIMESTAMP, 'vintage.style@example.com', 'securepass2', '11976543211', '57768821000190', 'Vintage Style', 'ALL'),
      ('8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743', CURRENT_TIMESTAMP, 'chic.retro@example.com', 'securepass3', '11976543212', '84577905000119', 'Chic Retrô', 'FEMALE'),
      ('9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854', CURRENT_TIMESTAMP, 'urban.wear@example.com', 'securepass4', '11976543213', '57556282000125', 'Urban Wear', 'MALE'),
      ('af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965', CURRENT_TIMESTAMP, 'eco.brecho@example.com', 'securepass5', '11976543214', '12872344000170', 'Eco Brechó', 'ALL');

INSERT INTO edna.clothe (
    id, brand, brand_other, category, category_other, color, created_at, description, fabric, gender, length_in_cm, "name", price_in_cents, "size", size_other, width_in_cm, store_id
) VALUES
      -- Brechó Bella clothes
      ('c1a2b3c4-d123-4abc-8e9f-a123b4c567d1', 'NIKE', NULL, 'T_SHIRT', NULL, 'vermelho', CURRENT_TIMESTAMP, 'Camiseta esportiva', 'algodão', 'MALE', 70, 'Camiseta Nike', 12000, 'M', NULL, 50, '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
      ('c2b3d4e5-f234-5bcd-9f0g-b234c5d678e2', 'OTHER', 'Marca Genérica', 'DRESS', NULL, 'azul', CURRENT_TIMESTAMP, 'Vestido casual', 'seda', 'FEMALE', 90, 'Vestido Azul', 25000, 'L', NULL, 60, '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
      ('c3d4e5f6-g345-6cde-af1h-c345d6e789f3', 'ZARA', NULL, 'PANTS', NULL, 'preto', CURRENT_TIMESTAMP, 'Calça formal', 'poliéster', 'UNISEX', 100, 'Calça Zara', 18000, 'N_38', NULL, 40, '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
      -- Vintage Style clothes
      ('d1e2f3g4-h456-7def-b12i-d456e7f890g4', 'ADIDAS', NULL, 'SHORTS', NULL, 'verde', CURRENT_TIMESTAMP, 'Short esportivo', 'algodão', 'MALE', 50, 'Short Adidas', 8000, 'M', NULL, 45, '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
      ('d2f3g4h5-i567-8efg-c23j-e567f8g901h5', 'OTHER', 'Marca Alternativa', 'OTHER', 'Macacão', 'branco', CURRENT_TIMESTAMP, 'Macacão casual', 'lã', 'FEMALE', 85, 'Macacão Branco', 20000, 'L', NULL, 55, '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
      ('d3g4h5i6-j678-9fgh-d34k-f678g9h012i6', 'CEA', NULL, 'HOODIE', NULL, 'cinza', CURRENT_TIMESTAMP, 'Moletom casual', 'algodão', 'UNISEX', 75, 'Moletom CEA', 15000, 'XL_LARGER', NULL, 65, '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
      -- Chic Retrô clothes
      ('e1f2g3h4-k789-0ghi-e45l-g789h0i123j7', 'FARM', NULL, 'DRESS', NULL, 'amarelo', CURRENT_TIMESTAMP, 'Vestido de verão', 'algodão', 'FEMALE', 95, 'Vestido FARM', 30000, 'M', NULL, 55, '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
      ('e2g3h4i5-l890-1hij-f56m-h890i1j234k8', 'OTHER', 'Grife Exclusiva', 'T_SHIRT', NULL, 'rosa', CURRENT_TIMESTAMP, 'Camiseta fashion', 'seda', 'FEMALE', 65, 'Camiseta Rosa', 14000, 'S', NULL, 50, '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
      ('e3h4i5j6-m901-2ijk-g67n-i901j2k345l9', 'HERING', NULL, 'PANTS', NULL, 'bege', CURRENT_TIMESTAMP, 'Calça casual', 'poliéster', 'MALE', 105, 'Calça Hering', 19000, 'N_42', NULL, 50, '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
      -- Urban Wear clothes
      ('f1g2h3i4-n012-3jkl-h78o-j012k3l456m0', 'NIKE', NULL, 'HOODIE', NULL, 'azul marinho', CURRENT_TIMESTAMP, 'Moletom esportivo', 'algodão', 'MALE', 80, 'Moletom Nike', 18000, 'L', NULL, 70, '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
      ('f2h3i4j5-o123-4klm-i89p-k123l4m567n1', 'RENNER', NULL, 'SHORTS', NULL, 'vermelho', CURRENT_TIMESTAMP, 'Short casual', 'jeans', 'UNISEX', 55, 'Short Renner', 10000, 'M', NULL, 50, '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
      ('f3i4j5k6-p234-5lmn-j90q-l234m5n678o2', 'OTHER', 'Confecção Local', 'OTHER', 'Macacão', 'verde oliva', CURRENT_TIMESTAMP, 'Macacão estiloso', 'sarja', 'FEMALE', 90, 'Macacão Verde', 22000, 'N_40', NULL, 60, '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
      -- Eco Brechó clothes
      ('g1h2i3j4-q345-6mno-k01r-m345n6o789p3', 'FARM', NULL, 'DRESS', NULL, 'verde claro', CURRENT_TIMESTAMP, 'Vestido ecológico', 'algodão orgânico', 'FEMALE', 100, 'Vestido Eco', 28000, 'M', NULL, 60, 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
      ('g2i3j4k5-r456-7nop-l12s-n456o7p890q4', 'CEA', NULL, 'T_SHIRT', NULL, 'cinza mescla', CURRENT_TIMESTAMP, 'Camiseta ecológica', 'algodão', 'UNISEX', 70, 'Camiseta Eco', 13000, 'L', NULL, 55, 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
      ('g3j4k5l6-s567-8opq-m23t-o567p8q901r5', 'OTHER', 'Design Sustentável', 'PANTS', NULL, 'marrom', CURRENT_TIMESTAMP, 'Calça Sustentável', 'jeans reciclado', 'MALE', 110, 'Calça Eco', 21000, 'N_44', NULL, 55, 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965');

INSERT INTO edna.address (id, cep, city, created_at, neighborhood, "number", street, store_id)
VALUES
    ('5db49ab1-f98a-44f1-bf5c-e6d92d6974e0', '01002000', 'São Paulo', NOW(), 'Sé', 100, 'Rua XV de Novembro', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('ba94d9de-93a2-4f75-b07d-82b0e59d1975', '20040000', 'Rio de Janeiro', NOW(), 'Centro', 200, 'Avenida Rio Branco', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('e8507b9f-b177-453f-91db-85039473b32f', '30190010', 'Belo Horizonte', NOW(), 'Centro', 300, 'Rua da Bahia', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('f205c7f1-740e-4887-b2fe-c1f6c04c65c7', '60040010', 'Fortaleza', NOW(), 'Centro', 400, 'Avenida Monsenhor Tabosa', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('f7c38fbe-cf65-42fc-a0fc-e9b0e0b4db7d', '13060060', 'Campinas', NOW(), 'Centro', 500, 'Rua Barreto Leme', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965');

INSERT INTO edna.opening_hour (id, closing_time, created_at, day_of_week, opening_time, store_id)
VALUES
    ('c531ea87-9b1b-48b1-b32e-741d301ed775', '18:00:00', NOW(), 0, '08:00:00', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('ef50e7cf-d6b2-44ea-8d4f-6012021c3cd3', '18:00:00', NOW(), 1, '08:00:00', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('6b053c75-2b1d-4e97-82db-e5f94d7d0f85', '18:00:00', NOW(), 2, '08:00:00', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('d041d1d0-443f-4044-b1d7-fd9f6bc51f1c', '18:00:00', NOW(), 3, '08:00:00', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('f4a321c7-2e0d-475f-b319-4e62036d906d', '18:00:00', NOW(), 4, '08:00:00', '6e1f8c1e-d229-4e98-99c2-7a6239a8b531'),
    ('bb70b2b2-e1ad-4871-b7e0-3a1ca28b8b66', '18:00:00', NOW(), 0, '08:00:00', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('5ad798a3-b59c-4b88-81b7-f7b65a2b50d1', '18:00:00', NOW(), 1, '08:00:00', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('a2496cfe-bf65-4f67-a0cc-c2d8a43d3d1b', '18:00:00', NOW(), 2, '08:00:00', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('430c2e8b-9b12-4531-8a02-bdfe32e054e4', '18:00:00', NOW(), 3, '08:00:00', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('d308fa9c-9532-46ad-89ea-c4c41e6d604f', '18:00:00', NOW(), 4, '08:00:00', '7f2c9a2e-bd5b-4a09-a3b8-8c2347c8d632'),
    ('2ef9e80a-0a9c-46b1-b410-5e4b1f36d3ac', '18:00:00', NOW(), 0, '08:00:00', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('9a52d5f3-e4e7-44e6-8c62-d5d3d31e77ed', '18:00:00', NOW(), 1, '08:00:00', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('c8c1b9a3-8880-4c29-bfba-9fc4606c9b3c', '18:00:00', NOW(), 2, '08:00:00', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('23e3e90f-b6ad-4b8d-80d6-5f0f1c5d68e3', '18:00:00', NOW(), 3, '08:00:00', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('9d230924-c8f6-4c2d-a724-e0a5cf5f8f9f', '18:00:00', NOW(), 4, '08:00:00', '8a3d0b3f-ce6c-4b18-b1d9-9d3456d9e743'),
    ('f575d1c0-7d83-4562-9fef-cedb88d0da4e', '18:00:00', NOW(), 0, '08:00:00', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('97d10b4f-6a2e-402f-9b45-8c43f8c3b86d', '18:00:00', NOW(), 1, '08:00:00', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('6ed6fc52-ff83-4db2-b9ae-2b5b40d90969', '18:00:00', NOW(), 2, '08:00:00', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('8e5ca7e1-cc2c-44cc-951f-80f462e9ae1d', '18:00:00', NOW(), 3, '08:00:00', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('0e0de23e-83a0-4758-b877-036e509a2999', '18:00:00', NOW(), 4, '08:00:00', '9b4e1c4f-de7d-4c29-c2e0-0e4567d0f854'),
    ('8c0ed67d-6fe5-43db-bbf1-0837c27d9e5f', '18:00:00', NOW(), 0, '08:00:00', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
    ('f329ee17-c88c-4133-98c7-d3b4bdb3b8a7', '18:00:00', NOW(), 1, '08:00:00', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
    ('73680e2d-0847-4d87-b1fd-c013a545060f', '18:00:00', NOW(), 2, '08:00:00', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
    ('622d6603-5c7d-4bb4-85d6-5fa67e2e61d8', '18:00:00', NOW(), 3, '08:00:00', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965'),
    ('9a8f67e1-f7be-4d72-89bb-e91e04989d9c', '18:00:00', NOW(), 4, '08:00:00', 'af5f2d5f-ef8e-4d39-d3f1-1f5678e1f965');

