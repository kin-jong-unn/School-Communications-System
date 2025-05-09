-- +goose Up
CREATE TABLE petition_approvals (
  petition_id UUID REFERENCES petitions(id),
  approved_by_user_id UUID REFERENCES users(id),
  approved_at TIMESTAMP WITH TIME ZONE NOT NULL,
  approval_comment TEXT,
  PRIMARY KEY (petition_id, approved_by_user_id)
);

-- +goose Down
DROP TABLE petition_approvals;
