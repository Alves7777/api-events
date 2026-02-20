CREATE TABLE coupon
(
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    code       VARCHAR(100) NOT NULL,
    discount INTEGER NOT NULL,
    valid TIMESTAMP NOT NULL,
    event_id UUID,
    FOREIGN KEY (event_id) REFERENCES events(id) ON DELETE CASCADE,
    date TIMESTAMP NOT NULL,
    remote BOOLEAN NOT NULL
);