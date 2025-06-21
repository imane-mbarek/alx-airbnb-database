DROP TABLE IF EXISTS bookings;

CREATE TABLE bookings (
    id INT,
    user_id INT,
    property_id INT,
    start_date DATE,
    booking_date DATE,
    PRIMARY KEY (id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Tester la performance
EXPLAIN SELECT * FROM bookings WHERE start_date BETWEEN '2024-01-01' AND '2024-06-01';
