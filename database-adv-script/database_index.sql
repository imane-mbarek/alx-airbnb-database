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

EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

