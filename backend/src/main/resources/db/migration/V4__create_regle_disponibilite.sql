CREATE TABLE regle_disponibilite (
    id BIGSERIAL PRIMARY KEY,
    pro_id BIGINT NOT NULL REFERENCES pro(id),
    jour_semaine SMALLINT NOT NULL,
    heure_debut TIME NOT NULL,
    heure_fin TIME NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT now()
);