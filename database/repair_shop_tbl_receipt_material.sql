create table tbl_receipt_material
(
    id          int auto_increment
        primary key,
    code        varchar(45) null,
    receipt_id  int         null,
    material_id int         null,
    quantity    int         null,
    created_by  int         null,
    created_at  bigint      null,
    updated_by  int         null,
    updated_at  bigint      null,
    deleted_at  bigint      null,
    deleted_by  int         null,
    constraint fk_receipt_id
        foreign key (receipt_id) references tbl_receipts (id)
            on update cascade on delete cascade
)
    collate = utf8mb4_bin;

create index fk_receipt_id_idx
    on tbl_receipt_material (receipt_id);

INSERT INTO repair_shop.tbl_receipt_material (code, receipt_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by) VALUES ('RCM00001', 1, 1, 100, null, 1632543797813, null, null, null, null);
INSERT INTO repair_shop.tbl_receipt_material (code, receipt_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by) VALUES ('RCM00002', 1, 4, 100, null, 1632543797829, null, null, null, null);
INSERT INTO repair_shop.tbl_receipt_material (code, receipt_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by) VALUES ('RCM00003', 2, 1, 100, null, 1632544534323, null, null, null, null);
INSERT INTO repair_shop.tbl_receipt_material (code, receipt_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by) VALUES ('RCM00004', 3, 13, 40, null, 1632881278811, null, null, null, null);
INSERT INTO repair_shop.tbl_receipt_material (code, receipt_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by) VALUES ('RCM00005', 3, 12, 30, null, 1632881278822, null, null, null, null);
