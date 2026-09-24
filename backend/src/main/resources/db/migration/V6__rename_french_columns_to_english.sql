ALTER TABLE pro RENAME COLUMN ville TO city;

ALTER TABLE regle_disponibilite RENAME TO availability_rule;
ALTER TABLE availability_rule RENAME COLUMN jour_semaine TO day_of_week;
ALTER TABLE availability_rule RENAME COLUMN heure_debut TO start_time;
ALTER TABLE availability_rule RENAME COLUMN heure_fin TO end_time;

ALTER TABLE reservation RENAME COLUMN client_nom TO client_name;