-- +goose UP
CREATE TABLE subjects (
    id UUID PRIMARY KEY,
    subject_name TEXT NOT NULL
);

-- +goose Down
DROP TABLE subjects;
