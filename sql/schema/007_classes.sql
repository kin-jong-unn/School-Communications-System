-- +goose UP
CREATE TABLE classes (
    id UUID PRIMARY KEY,
    class_name TEXT UNIQUE NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- +goose Down
DROP TABLE classes;
