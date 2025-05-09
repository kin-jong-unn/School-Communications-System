-- +goose Up
CREATE TABLE roles (
    id UUID PRIMARY KEY,
    role_name TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    description TEXT
);

-- +goose Down
DROP TABLE roles;
