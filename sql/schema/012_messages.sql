-- +goose UP
CREATE TABLE messages (
    id UUID PRIMARY KEY,
    sender_id UUID REFERENCES users(id),
    content TEXT NOT NULL,
    send_at TIMESTAMP NOT NULL,
    message_type TEXT NOT NULL
);

-- +goose Down
DROP TABLE messages;
