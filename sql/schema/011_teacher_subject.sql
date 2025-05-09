-- +goose UP
CREATE TABLE teacher_subject (
  teacher_id UUID REFERENCES users(id),
  subject_id UUID REFERENCES subjects(id),
  PRIMARY KEY (teacher_id, subject_id)
);

-- +goose Down
DROP TABLE teacher_subject;
