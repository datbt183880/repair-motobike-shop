create table tbl_service_order
(
    id         int auto_increment
        primary key,
    code       varchar(50) null,
    invoice_id int         null,
    service_id int         null,
    created_by int         null,
    updated_by int         null,
    created_at bigint      null,
    updated_at bigint      null,
    deleted_at bigint      null,
    deleted_by int         null,
    status     int         null,
    constraint fk1_invoice_id
        foreign key (invoice_id) references tbl_invoices (id)
            on update cascade on delete cascade
)
    comment 'bảng dịch vụ được khách order' collate = utf8mb4_bin;

create index fk1_invoice_id_idx
    on tbl_service_order (invoice_id);

INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00001', 14, 2, null, null, 1631808767675, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00002', 15, 3, null, null, 1631809292962, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00003', 15, 2, null, null, 1631809292962, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00004', 16, 2, null, null, 1631809427226, 1631863358301, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00005', 17, 2, null, null, 1631809779254, 1631864712369, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00006', 17, 3, null, null, 1631809779254, 1631864712375, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00007', 1, 2, null, null, 1631866530199, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00008', 2, 1, null, null, 1631866659965, 1631867836815, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00009', 17, 1, null, null, 1631948722438, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00010', 5, 5, null, null, 1632130503366, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00011', 14, 3, null, null, 1632130614587, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00012', 19, 5, null, null, 1632710041960, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00014', 21, 5, null, null, 1632842347080, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00015', 22, 2, null, null, 1632842362092, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00016', 8, 3, null, null, 1633059003624, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00017', 28, 4, null, null, 1633019884306, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00018', 29, 4, null, null, 1633097630554, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00019', 28, 9, null, null, 1633019884306, null, null, null, 1);
INSERT INTO repair_shop.tbl_service_order (code, invoice_id, service_id, created_by, updated_by, created_at, updated_at, deleted_at, deleted_by, status) VALUES ('SVO00020', 27, 10, null, null, 1633019818444, null, null, null, 1);
