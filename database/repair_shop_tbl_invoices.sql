create table tbl_invoices
(
    id                  int auto_increment
        primary key,
    code                varchar(50)    null,
    vehicle_customer_id int            null,
    fixer_id            int            null,
    pay_method          int            null,
    deleted_by          int            null,
    total               decimal(13, 2) null,
    created_by          int            null,
    created_at          bigint         null,
    updated_by          int            null,
    updated_at          bigint         null,
    status              int            null,
    deleted_at          bigint         null,
    note                varchar(500)   null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00001', 1, 5, 1, null, 410000.00, null, 1631114912926, null, 1632889707229, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00002', 2, 5, 1, null, 240000.00, null, 1631114912926, null, 1633059043883, 4, null, 'Thanh toán hóa đơn bằng tiền mặt');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00003', 4, 9, 1, null, 70000.00, null, 1631114912926, null, 1633059046199, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00004', 11, 7, 1, null, 90000.00, null, 1631114912926, null, 1633096632145, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00005', 10, 6, 1, null, 400000.00, null, 1631114912926, null, 1632130503318, 3, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00006', 2, 7, 1, null, 170000.00, null, 1631114912926, null, 1633074345788, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00007', 3, 8, 1, null, 600000.00, null, 1631114912926, null, 1632847704117, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00008', 5, 9, 1, null, 260000.00, null, 1631114912926, null, 1633062155344, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00009', 6, 10, 1, null, 70000.00, null, 1631114912926, null, 1633062126140, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00010', 7, 7, 1, null, 650000.00, null, 1631114912926, null, 1632847709219, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00011', 8, 6, 1, null, 150000.00, null, 1631114912926, null, 1633059048983, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00012', 9, 12, 1, null, 0.00, null, 1631114912926, null, 1633074456430, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00013', 3, 11, 1, null, 0.00, null, 1631114912926, null, 1633073795048, 4, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00014', 4, 6, 1, null, 310000.00, null, 1631808767635, null, 1632845595233, 2, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00015', 7, 8, 1, null, 290000.00, null, 1631809292934, null, 1633097087060, 5, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00016', 5, 13, 1, null, 100000.00, null, 1631809427194, null, 1631863358229, 2, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00017', 6, 14, 1, null, 150000.00, null, 1631809779247, null, 1632975580173, 3, null, 'Thanh toán hóa đơn');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00018', 3, 10, 0, null, 50000.00, null, 1632709933755, null, 1632846909927, 3, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00019', 7, 13, 0, null, 220000.00, null, 1632710041913, null, null, 3, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00020', 2, 18, 0, null, 120000.00, null, 1632842320856, null, null, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00021', 7, 14, 0, null, 270000.00, null, 1632842347073, null, 1633073204206, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00022', 5, 22, 0, null, 150000.00, null, 1632842362086, null, 1633086438879, 7, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00023', 1, 8, 0, null, 70000.00, null, 1632973164243, null, 1633086198685, 5, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00024', 18, 10, 0, null, 220000.00, null, 1633019080064, null, null, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD00025', 16, 11, 0, null, 60000.00, null, 1633019167440, null, null, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD48092', 2, 12, 0, null, 250000.00, null, 1633019216288, null, null, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD41611', 2, 5, 0, null, 520000.00, null, 1633019818444, null, null, 2, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD42055', 15, 21, 0, null, 90000.00, null, 1633019884306, null, 1633086329543, 5, null, '');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD48756', 2, 11, 0, null, 120000.00, null, 1633097630554, null, 1633098535027, 5, null, 'Hóa đơn mới');
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD31976', 1, null, 0, null, 200000.00, null, 1633252625678, null, null, 4, null, null);
INSERT INTO repair_shop.tbl_invoices (code, vehicle_customer_id, fixer_id, pay_method, deleted_by, total, created_by, created_at, updated_by, updated_at, status, deleted_at, note) VALUES ('HD38666', 22, null, 0, null, 600000.00, null, 1633254324254, null, 1633277100476, 5, null, 'Phiếu Mua phụ kiện');
