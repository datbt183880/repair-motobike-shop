create table tbl_roles
(
    id          int auto_increment
        primary key,
    code        varchar(50)  null,
    name        varchar(50)  null,
    description varchar(200) null,
    created_by  int          null,
    created_at  bigint       null,
    updated_by  int          null,
    updated_at  bigint       null,
    status      int          null,
    deleted_at  bigint       null,
    deleted_by  int          null
)
    collate = utf8mb4_bin;

INSERT INTO repair_shop.tbl_roles (code, name, description, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('RL00001', 'ROLE_ADMIN', 'Quản trị viên', 4, 1630766754751, null, null, 1, null, null);
INSERT INTO repair_shop.tbl_roles (code, name, description, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('RL00002', 'ROLE_COORDINATOR', 'Nhân viên điều phối', 4, 1630766754751, null, 1632677321053, 1, null, null);
INSERT INTO repair_shop.tbl_roles (code, name, description, created_by, created_at, updated_by, updated_at, status, deleted_at, deleted_by) VALUES ('RL00003', 'ROLE_FIXER', 'Nhân viên sửa chữa', 4, 1630766754751, null, null, 1, null, null);
