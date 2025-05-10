# Airbnb Clone - Sample Data Seed

This directory contains SQL scripts to populate the Airbnb Clone database with sample data.

## Files

- `seed.sql`: Contains SQL INSERT statements to add sample users, properties, bookings, payments, reviews, and messages.

## Description

The sample data includes:
- 3 users (guest, host, admin)
- 2 properties linked to the host
- 2 bookings made by a guest
- Corresponding payments for bookings
- Reviews left by the guest
- Messages exchanged between host and guest

The data is designed to simulate realistic usage for development and testing purposes.

## Usage

After creating your schema, run:

```bash
psql -U your_user -d your_database -f seed.sql
