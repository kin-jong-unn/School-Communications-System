-- +goose Up
CREATE TABLE teacher_department (
    teacher_id UUID PRIMARY KEY, 
    department_id UUID NOT NULL,
    FOREIGN KEY (teacher_id) REFERENCES users(id),
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- +goose Down
DROP TABLE teacher_department;
