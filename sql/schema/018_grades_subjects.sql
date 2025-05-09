-- +goose UP
CREATE TABLE grades_subjects (
  grade_id UUID REFERENCES grades(id),
  subject_id UUID REFERENCES subjects(id),
  student_id UUID REFERENCES users(id),
  PRIMARY KEY (grade_id, subject_id, student_id)
);

-- +goose Down
DROP TABLE grades_subjects;
