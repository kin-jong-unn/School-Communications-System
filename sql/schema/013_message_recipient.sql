-- +goose UP
CREATE TABLE message_recipient (
    message_id UUID REFERENCES messages(id),
    receiver_id UUID REFERENCES users(id),
    status TEXT NOT NULl,
    PRIMARY KEY (message_id, receiver_id)
);

-- +goose Down
DROP TABLE message_recipient;
