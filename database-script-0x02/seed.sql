-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('a1', 'Alice', 'Smith', 'alice@example.com', 'hashed_password1', '1234567890', 'guest'),
  ('b2', 'Bob', 'Johnson', 'bob@example.com', 'hashed_password2', '0987654321', 'host'),
  ('c3', 'Carla', 'Brown', 'carla@example.com', 'hashed_password3', NULL, 'admin');

-- Insert sample properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1', 'b2', 'Cozy Cottage', 'A cozy countryside cottage.', 'Marrakech', 75.00),
  ('p2', 'b2', 'Modern Apartment', 'A sleek apartment in the city.', 'Casablanca', 120.00);

-- Insert sample bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('bk1', 'p1', 'a1', '2025-05-01', '2025-05-05', 300.00, 'confirmed'),
  ('bk2', 'p2', 'a1', '2025-06-10', '2025-06-12', 240.00, 'pending');

-- Insert sample payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay1', 'bk1', 300.00, 'credit_card'),
  ('pay2', 'bk2', 240.00, 'paypal');

-- Insert sample reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('r1', 'p1', 'a1', 5, 'Wonderful stay, very relaxing!'),
  ('r2', 'p2', 'a1', 4, 'Nice place but a bit noisy.');

-- Insert sample messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m1', 'a1', 'b2', 'Hi, is the apartment available on June 10?'),
  ('m2', 'b2', 'a1', 'Yes, it is. You can go ahead and book.');
