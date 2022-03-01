create table tbl_material_order
(
    id          int auto_increment
        primary key,
    code        varchar(50) null,
    invoice_id  int         null,
    material_id int         null,
    quantity    int         null,
    created_by  int         null,
    created_at  bigint      null,
    updated_by  int         null,
    updated_at  bigint      null,
    deleted_at  bigint      null,
    deleted_by  int         null,
    status      int         null,
    constraint fk2_invoice_id
        foreign key (invoice_id) references tbl_invoices (id)
            on update cascade on delete cascade
)
    collate = utf8mb4_bin;

create index fk2_invoice_id_idx
    on tbl_material_order (invoice_id);

INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00001', 14, 1, 1, null, 1631808767635, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00002', 14, 2, 1, null, 1631808767635, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00003', 15, 1, 1, null, 1631809292936, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00004', 16, 4, 1, null, 1631809427196, null, 1631863358253, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00005', 16, 5, 1, null, 1631809427196, null, 1631863358277, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00006', 17, 6, 1, null, 1631809779247, null, 1631864712330, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00007', 17, 7, 1, null, 1631809779247, null, 1631864712348, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00008', 1, 8, 1, null, 1631866579915, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00009', 2, 9, 2, null, 1631867836760, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00010', 3, 2, 1, null, 1632129954671, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00011', 3, 4, 1, null, 1632129954724, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00012', 5, 1, 1, null, 1632130503320, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00013', 18, 3, 1, null, 1632709933755, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00014', 19, 2, 1, null, 1632710041944, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00015', 20, 2, 1, null, 1632842320933, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00016', 20, 15, 1, null, 1632842320939, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00017', 20, 4, 1, null, 1632842320949, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00018', 21, 3, 1, null, 1632842347077, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00019', 22, 3, 1, null, 1632842362089, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00020', 4, 3, 1, null, 1632842656067, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00021', 4, 5, 1, null, 1632842656081, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00022', 4, 2, 1, null, 1632889637909, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00023', 23, 2, 1, null, 1632973164264, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00024', 24, 2, 1, null, 1633019080093, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00025', 24, 1, 10, null, 1633019080100, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00026', 25, 2, 1, null, 1633019167461, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00027', 25, 5, 2, null, 1633019167468, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00028', 26, 2, 10, null, 1633019216315, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00029', 26, 4, 1, null, 1633019216323, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00030', 27, 2, 1, null, 1633019818472, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00031', 27, 3, 10, null, 1633019818479, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00032', 28, 2, 1, null, 1633019884325, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00033', 28, 3, 1, null, 1633019884330, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00034', 6, 2, 1, null, 1633058722233, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00035', 6, 4, 1, null, 1633058722245, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00036', 8, 1, 1, null, 1633059003634, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00037', 22, 15, 1, null, 1633086446693, null, null, null, null, 2);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00038', 29, 7, 1, null, 1633097630586, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00039', 29, 9, 1, null, 1633097630602, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO00040', 29, 14, 1, null, 1633097651981, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO19486', 36, 2, 10, null, 1633252625730, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO37790', 37, 3, 10, null, 1633254324259, null, null, null, null, 1);
INSERT INTO repair_shop.tbl_material_order (code, invoice_id, material_id, quantity, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status) VALUES ('MTO62183', 37, 4, 2, null, 1633254324262, null, null, null, null, 1);
