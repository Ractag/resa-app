CREATE TABLE service (
    id BIGSERIAL PRIMARY KEY,
    pro_id BIGINT NOT NULL REFERENCES pro(id),
    name VARCHAR(120) NOT NULL,
    duration_minutes INT NOT NULL,
    price NUMERIC(10,2),
    created_at TIMESTAMP NOT NULL DEFAULT now()
);