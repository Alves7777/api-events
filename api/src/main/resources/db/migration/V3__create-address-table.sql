CREATE TABLE address
(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    city       VARCHAR(100) NOT NULL,
    uf INTEGER NOT NULL,
    event_id UUID,
    FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE
);