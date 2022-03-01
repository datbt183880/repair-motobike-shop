create table tbl_vehicles
(
    id            int auto_increment
        primary key,
    code          varchar(50) null,
    license_plate varchar(50) null,
    created_by    int         null,
    updated_by    int         null,
    created_at    bigint      null,
    updated_at    bigint      null,
    deleted_at    bigint      null,
    deleted_by    int         null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00001', '30L192020', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00002', '29B178729', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00003', '17B198371', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00004', '30C173621', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00005', '29B183716', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00006', '29B182722', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00007', '29L127261', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00008', '30L173635', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00009', '15B187362', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00010', '17B127361', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00011', '30B129847', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00012', '30L192021', null, null, 1632972208459, null, null, null);
INSERT INTO repair_shop.tbl_vehicles (code, license_plate, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by) VALUES ('VH00013', '18D119281', null, null, 1632972416805, null, null, null);
