-- +goose Up
CREATE TABLE report_recipients (
  report_id UUID REFERENCES reports(id),
  recipient_id UUID REFERENCES users(id),
  PRIMARY KEY (report_id, recipient_id)
);

-- +goose Down
DROP TABLE report_recipients;
