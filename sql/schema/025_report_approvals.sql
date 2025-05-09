-- +goose Up
CREATE TABLE report_approvals (
  report_id UUID REFERENCES reports(id),
  approved_by_user_id UUID REFERENCES users(id),
  approved_at TIMESTAMP WITH TIME ZONE NOT NULL,
  approval_comment TEXT,
  PRIMARY KEY (report_id, approved_by_user_id)
);

-- +goose Down
DROP TABLE report_approvals;
