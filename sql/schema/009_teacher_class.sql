-- +goose UP
CREATE TABLE teacher_class (
    teacher_id UUID PRIMARY KEY REFERENCES users(id),
    class_id UUID UNIQUE NOT NULL REFERENCES classes(id)
);

-- +goose Down
DROP TABLE teacher_class;
