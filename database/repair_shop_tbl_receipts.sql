create table tbl_receipts
(
    id         int auto_increment
        primary key,
    code       varchar(50)  null,
    created_by int          null,
    created_at bigint       null,
    updated_by int          null,
    updated_at bigint       null,
    deleted_at bigint       null,
    deleted_by int          null,
    status     int          null,
    note       varchar(500) null
)
    comment 'Bảng phiếu nhập kho' collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_receipts (code, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status, note) VALUES ('RC00001', null, 1632543797812, null, null, null, null, 1, null);
INSERT INTO repair_shop.tbl_receipts (code, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status, note) VALUES ('RC00002', null, 1632544534323, null, null, null, null, 1, null);
INSERT INTO repair_shop.tbl_receipts (code, created_by, created_at, updated_by, updated_at, deleted_at, deleted_by, status, note) VALUES ('RC00003', null, 1632881278811, null, null, null, null, 1, '');
