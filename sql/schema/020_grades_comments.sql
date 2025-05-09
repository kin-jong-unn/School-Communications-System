-- +goose UP
CREATE TABLE grades_comments (
  grade_id UUID REFERENCES grades(id),
  comment_id UUID REFERENCES comments(id),
  student_id UUID REFERENCES users(id),
  PRIMARY KEY (grade_id, comment_id, student_id)
);

-- +goose Down
DROP TABLE grades_comments;
