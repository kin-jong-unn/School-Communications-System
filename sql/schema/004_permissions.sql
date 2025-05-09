-- +goose UP
CREATE TABLE permissions (
    id UUID PRIMARY KEY,
    permission_name TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- +goose Down
DROP TABLE permissions;
