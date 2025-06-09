# Refresh Token
CREATE TABLE refresh_tokens (
           id BIGINT PRIMARY KEY,
           refresh_token TEXT NOT NULL UNIQUE,
           expiry_date TIMESTAMP NOT NULL
);
