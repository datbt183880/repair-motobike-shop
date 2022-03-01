create table tbl_user_role
(
    user_id int not null,
    role_id int not null,
    primary key (user_id, role_id),
    constraint fk1_user_id
        foreign key (user_id) references tbl_users (id)
            on update cascade on delete cascade,
    constraint fk2_role_id
        foreign key (role_id) references tbl_roles (id)
            on update cascade on delete cascade
)
    collate = utf8mb4_bin;

create index fk_role_id_idx
    on tbl_user_role (role_id);

INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (4, 1);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (1, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (7, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (22, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (23, 2);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (5, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (6, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (8, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (9, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (10, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (11, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (12, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (13, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (14, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (18, 3);
INSERT INTO repair_shop.tbl_user_role (user_id, role_id) VALUES (21, 3);
