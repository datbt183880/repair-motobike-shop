create table tbl_services
(
    id          int auto_increment
        primary key,
    code        varchar(50)    null,
    name        varchar(50)    null,
    description varchar(200)   null,
    price       decimal(13, 2) null,
    created_by  int            null,
    updated_by  int            null,
    created_at  bigint         null,
    updated_at  bigint         null,
    status      int            null,
    deleted_at  bigint         null,
    deleted_by  int            null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00001', 'Rửa xe', 'Rửa xe máy', 20000.00, 4, null, 1632888929276, 1632888929276, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00002', 'Thay Lốp', 'Thay lốp xe máy', 50000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00003', 'Sửa phanh xe', 'Sửa phanh xe máy', 40000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00004', 'Vá xăm xe', 'Vá săm xe máy', 20000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00005', 'Bảo hành xe máy', 'Bảo hành toàn bộ xe máy', 200000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00006', 'Thay Dầu', 'Thay dầu xe máy', 40000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00007', 'Bơm xe', 'Bơm xe máy', 20000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00008', 'Thay yếm', 'Thay yếm xe máy', 50000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00009', 'Thay đũa xe', 'Thay đũa xe máy', 30000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00010', 'Sửa phanh xe', 'Sửa phanh xe máy', 40000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00011', 'Sửa Bô xe máy', 'Sửa bô xe', 30000.00, 4, null, 1632888929276, null, 1, null, null);
INSERT INTO repair_shop.tbl_services (code, name, description, price, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by) VALUES ('SV00012', 'Sửa chắn bùn ', 'sửa chắn bùn xe', 20000.00, 4, null, 1632888929276, 1633055262645, 2, null, null);
