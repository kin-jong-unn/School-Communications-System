-- +goose UP
CREATE TABLE grades (
    id UUID PRIMARY KEY,
    mark SMALLINT NOT NULL CHECK (mark >= 0 AND mark <= 10),
    type TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);

-- +goose Down
DROP TABLE grades;
