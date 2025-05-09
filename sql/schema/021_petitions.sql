-- +goose Up
CREATE TABLE petitions (
  id UUID PRIMARY KEY,
  creator_id UUID REFERENCES users(id) NOT NULL,
  content TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL,
  status TEXT NOT NULL,
  title TEXT NOT NULL
);

-- +goose Down
DROP TABLE petitions;
