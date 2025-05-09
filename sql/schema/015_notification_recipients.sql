-- +goose UP
CREATE TABLE notification_recipients (
  notification_id UUID REFERENCES notifications(id),
  receiver_id UUID REFERENCES users(id),
  status TEXT NOT NULL,
  PRIMARY KEY (notification_id, receiver_id)
);

-- +goose Down
DROP TABLE notification_recipients;
