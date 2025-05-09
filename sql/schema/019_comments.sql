-- +goose UP
CREATE TABLE comments (
  id UUID PRIMARY KEY,
  content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL,
  creator_id UUID REFERENCES users(id) NOT NULL
);

-- +goose Down
DROP TABLE comments;
