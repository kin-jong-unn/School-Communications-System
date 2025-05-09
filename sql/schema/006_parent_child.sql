-- +goose UP
CREATE TABLE parent_child (
    parent_id UUID NOT NULL,
    child_id UUID NOT NULL,
    FOREIGN KEY (parent_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (child_id) REFERENCES users(id) ON DELETE CASCADE
);

-- +goose Down
DROP TABLE parent_child;
