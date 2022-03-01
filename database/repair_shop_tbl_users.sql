create table tbl_users
(
    id            int auto_increment
        primary key,
    code          varchar(50)  null,
    username      varchar(50)  null,
    password      varchar(100) null,
    avatar        varchar(100) null,
    name          varchar(100) null,
    address       varchar(100) null,
    email         varchar(50)  null,
    date_of_birth datetime     null,
    phone         varchar(15)  null,
    sex           tinyint(1)   null,
    salary_day    double       null comment 'Lương một ngày hoặc 1 ca của nhân viên',
    created_by    int          null,
    updated_by    int          null,
    created_at    bigint       null,
    updated_at    bigint       null,
    status        int          null,
    deleted_at    bigint       null,
    deleted_by    int          null,
    id_card       varchar(20)  null
)
    comment 'Bảng lưu thông tin nhân viên' collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00001', 'nguyenvana', '$2a$10$bSK/2StM6AetbSwvFYDx0urZ/RaoWXfu8nR1lqdbLcpE16FaNN8a.', null, 'Nguyễn Văn Bình', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvanb@gmail.com', null, '0928163141', 1, 250000, 4, null, 1630766754751, 1631612048676, 1, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00002', 'nguyenvanb', '$2a$10$alSEIamJtDre/F2itJJqdeMAjlWaVk0oNTR2LKLa.l4snuOYiTvHe', null, 'Nguyễn Văn Định', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvana123@gmail.com', null, '0972652313', 1, 200000, 4, null, 1630766754751, 1630922883610, 1, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00003', 'nguyenthic', '$2a$10$evZujVzOgS6Igwl6nLi8vuuERx7jYgk7QD6qSbQ/8AaP4k0qkI.xq', null, 'Nguyễn Thị Cúc', '123 - Nguyễn Chí Thanh - Ba ', 'nguyenthic@gmail.com', null, '0987262541', 0, 250000, 4, null, 1630766754751, null, 1, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00000', 'admin', '$2a$10$woH.HoKhKauum3yRVGNILuxggnJ33uj75jgZUQRAsZco0JrU.IkyK', null, 'Quản trị viên', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'admin@gmail.com', null, '0982727162', 1, 0, 4, null, 1630766754751, null, 1, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00004', 'nguyenvanx', 'nguyenvanx', null, 'Nguyễn Văn Tùng', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvanx@gmail.com', null, '0971366551', 1, 230000, 4, null, 1630766754751, 1631612073036, 3, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00005', 'daovantrung', 'daovantrung', null, 'Đào Văn Trung', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'daovantrung@gmail.com', null, '0327651522', 1, 240000, 4, null, 1630766754751, null, 3, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00006', 'nguyenvananh', 'nguyenvananh', null, 'Nguyễn Văn Anh', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvananh@gmail.com', null, '0982761261', 1, 240000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00007', 'nguyenthioanh', 'nguyenthioanh', null, 'Nguyễn Thị Oanh', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenthioanh@gmail.com', null, '0928217212', 0, 250000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00008', 'daoxuanquyen', 'daoxuanquyen', null, 'Đào Xuân Quyền', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'daoxuanquyen@gmail.com', null, '0312319911', 1, 300000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00009', 'hoangthuthao', 'hoangthuthao', null, 'Hoàng Thu Thảo', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'hoangthuthao@gmail.com', null, '0817256251', 0, 270000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00010', 'nguyencamnhung', 'nguyencamnhung', null, 'Nguyễn Cẩm Nhung', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyencamnhung@gmail.com', null, '0826261521', 0, 250000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00011', 'nguyenvankhanh', 'nguyenvankhanh', null, 'Nguyễn Văn Khánh', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvankhanh@gmail.com', null, '0792177211', 1, 260000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00012', 'nguyenvandinh', 'nguyenvandinh', null, 'Nguyễn Văn Định', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'nguyenvandinh@gmail.com', null, '0928177271', 1, 270000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00013', 'dinhtiendung', 'dinhtiendung', null, 'Đinh Tiến Dũng', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'dinhtiendung@gmail.com', null, '0918212111', 1, 230000, 4, null, 1630766754751, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00014', 'dinhvanhoi', 'dinhvanhoi', null, 'Đinh Văn Hội', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'dinhvanhoi12@gmail.com', null, '0973654871', 1, 190000, null, null, 1630769356655, null, 3, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00015', 'thekhoadohoi', '$2a$10$cT9cRhTIhgvOluwwDCR3c.ZuqJMl1l2SStYzUWwr0eubQ6X3yTPRq', null, 'Đỗ Văn Trung', 'Hai Bà Trưng', 'thekhoa4282@gmail.com', null, '0951359554', 0, 300000, null, null, 1631197174960, 1631199314388, 3, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00016', 'dinhcongmanh', 'dinhcongmanh', null, 'Đinh Công Mạnh', '123 - Hồ Tùng Mậu - Nam Từ Niêm - HN', 'dinhcongmanh937@gmail.com', null, '0862764871', 1, 300000, null, null, 1631500927341, null, 4, null, null, null);
INSERT INTO repair_shop.tbl_users (code, username, password, avatar, name, address, email, date_of_birth, phone, sex, salary_day, created_by, updated_by, created_at, updated_at, status, deleted_at, deleted_by, id_card) VALUES ('NV00017', 'nguyenvana1', 'nguyenvana', null, 'Nguyễn Văn Tuấn', '123 - Nguyễn Chí Thanh - Ba Đình- HN', 'thekhoa1710@gmail.com', null, '0983726123', 1, 300000, null, null, 1632455690466, null, 3, 1633142197482, null, null);