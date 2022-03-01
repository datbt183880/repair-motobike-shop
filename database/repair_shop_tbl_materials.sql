create table tbl_materials
(
    id           int auto_increment
        primary key,
    code         varchar(50)    null,
    name         varchar(50)    null,
    image        varchar(100)   null,
    description  varchar(200)   null,
    quantity     int            null,
    supplier     varchar(50)    null,
    output_price decimal(13, 2) null,
    input_price  decimal(13, 2) null,
    created_by   int            null,
    created_at   bigint         null,
    updated_by   int            null,
    updated_at   bigint         null,
    status       int            null,
    deleted_at   bigint         null,
    deleted_by   int            null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00001', 'Yếm Dreams', '/computer/dreams/materials', 'Yếm cho xe Honda Dreams', 285, 'Honda', 200000.00, 300000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00002', 'Gương Dreams', '/computer/dreams/materials', 'Gương cho xe Honda Dreams', 14, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00003', 'Yên xe Dreams', '/computer/dreams/materials', 'Yên cho xe Dreams', 19, 'Honda', 50000.00, 100000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00004', 'Giảm Sóc xe Dreams', '/computer/dreams/materials', 'Giảm sóc cho xe Dreams', 292, 'Honda', 50000.00, 100000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00005', 'Đèn xi nhan Dreams', '/computer/dreams/materials', 'Đèn xi nhan xe Dreams', 92, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00006', 'Đèn phanh xe Dreams', '/computer/dreams/materials', 'Đèn phan cho xe dreams', 46, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00007', 'Đèn pha xe Dreams', '/computer/dreams/materials', 'Đèn pha xe Dreams', 24, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00008', 'Hộp số xe Honda', '/computer/honda', 'Hộp số xe honda', 28, 'Honda', 100000.00, 200000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00009', 'Chân phanh xe Honda số', '/computer/honda', 'Chân phanh cho xe Honda số ', 4, 'Honda', 50000.00, 100000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00010', 'Bô 2543 ', '/computer/honda', 'Bô cho xe số sàn', 50, 'Honda', 100000.00, 200000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00011', 'Giỏ xe Honda Dreams', '/computer/dreams/materials', 'Giỏ cho xe Honda Dreams', 3, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00012', 'Giỏ cho xe Wave', '/computer/wave/materials', 'Giỏ cho xe Honda Wave', 30, 'Honda', 20000.00, 50000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00013', 'Chân Chống Honda', '/computer/honda', 'Chân chống cho xe Honda', 70, 'Honda', 20000.00, 40000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00014', 'Xăm xe', '/computer/honda', 'Xăm xe Số Honda', 99, 'Honda', 50000.00, 100000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00015', 'Lốp xe Honda', '/computer/honda', 'Lốp xe Honda cho xe số', 48, 'Honda', 50000.00, 100000.00, null, null, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00016', 'Đèn xe máy', null, 'Đèn xe máy honda', 0, null, null, 100000.00, null, 1632539952862, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00017', 'Bugi xe máy', null, 'Bugi xe máy yamaha', 0, null, 200000.00, 100000.00, null, 1632540215075, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_materials (code, name, image, description, quantity, supplier, output_price, input_price, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('MT00018', 'Tay nắm xe máy', null, 'Tay nắm xe máy bmw', 0, null, 90000.00, 80000.00, null, 1632540553963, null, null, 1, null, null);
