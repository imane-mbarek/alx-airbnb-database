EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;



-- Index sur la clé étrangère bookings.user_id (utile pour les JOINs et les WHERE)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index sur la clé étrangère bookings.property_id (si utilisée pour des jointures dans le futur)
-- (pas présente directement, mais peut être ajoutée si bookings a property_id plus tard)

-- Index sur la date de réservation, utile pour les tris ou filtres
CREATE INDEX idx_booking_date ON bookings(booking_date);

-- Index sur la clé étrangère reviews.property_id (pour joindre avec properties)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Index sur la colonne users.id (pas obligatoire car c'est la clé primaire, donc indexée automatiquement)
-- Idem pour properties.id
-- Pour JOIN entre bookings et users
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Pour JOIN entre bookings et properties
ALTER TABLE bookings ADD COLUMN property_id INT;
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Pour JOIN entre payments et bookings
CREATE INDEX idx_payments_booking_id ON payments(booking_id);


-- Requête i

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

-- EXPLAIN avant index (juste un exemple simple)
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;

-- Index sur bookings.user_id (utile pour les WHERE et JOINs)
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Si bookings a une colonne property_id (pour joindre avec properties)
ALTER TABLE bookings ADD COLUMN property_id INT;
ALTER TABLE bookings ADD FOREIGN KEY (property_id) REFERENCES properties(id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index sur booking_date si on fait des ORDER BY ou des filtres dessus
CREATE INDEX idx_booking_date ON bookings(booking_date);

-- Index sur reviews.property_id (pour les jointures avec properties)
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Si tu as une table payments (pour joindre avec bookings)
CREATE INDEX idx_payments_booking_id ON payments(booking_id);

-- EXPLAIN après index
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;
