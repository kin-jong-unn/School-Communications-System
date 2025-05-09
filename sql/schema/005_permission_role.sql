-- +goose UP
CREATE TABLE permission_role (
    permission_id UUID NOT NULL,
    role_id UUID NOT NULL,
    FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE       
);

-- +goose Down
DROP TABLE permission_role;
