-- +goose UP
CREATE TABLE notifications (
  id UUID PRIMARY KEY,
  creator_id UUID REFERENCES users(id) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  notification_type TEXT NOT NULL
);

-- +goose Down
DROP TABLE notifications;
