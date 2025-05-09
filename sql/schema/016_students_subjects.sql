-- +goose UP
CREATE TABLE students_subjects (
  student_id UUID REFERENCES users(id),
  subject_id UUID REFERENCES subjects(id),
  PRIMARY KEY (student_id, subject_id)
);

-- +goose Down
DROP TABLE students_subjects;
