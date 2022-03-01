create table tbl_vehicle_customer
(
    id          int auto_increment
        primary key,
    vehicle_id  int null,
    customer_id int null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (1, 1);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (2, 2);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (3, 3);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (4, 4);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (5, 5);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (6, 6);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (7, 7);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (8, 8);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (9, 9);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (10, 10);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (11, 11);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (1, 12);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (1, 15);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (2, 16);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (3, 17);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (4, 18);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (5, 19);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (12, 29);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (13, 31);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (11, 32);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (10, 33);
INSERT INTO repair_shop.tbl_vehicle_customer (vehicle_id, customer_id) VALUES (null, 34);
