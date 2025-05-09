-- +goose UP
CREATE TABLE student_class (
    student_id UUID NOT NULL,
    class_id UUID NOT NULL,
    FOREIGN KEY (student_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES classes(id) ON DELETE CASCADE
);

-- +goose Down
DROP TABLE student_class;
