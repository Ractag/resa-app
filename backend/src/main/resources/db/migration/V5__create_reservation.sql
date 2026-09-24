CREATE TABLE reservation (
    id BIGSERIAL PRIMARY KEY,
    service_id BIGINT NOT NULL REFERENCES service(id),
    client_nom VARCHAR(120) NOT NULL,
    client_email VARCHAR(255) NOT NULL,
    start_at TIMESTAMP NOT NULL,
    end_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);