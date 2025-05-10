# Airbnb Clone - Database Schema

This directory contains the SQL schema for the Airbnb Clone project.

## Files

- `schema.sql`: Defines all tables (users, properties, bookings, payments, reviews, messages) with their data types, primary and foreign keys, constraints, and indexes.

## Description

The schema covers:
- User management with roles and contact info
- Property listings linked to hosts
- Booking system with status tracking
- Payment handling and payment methods
- Review and rating system
- Messaging between users

The schema is normalized and designed for performance using appropriate indexes.

## Usage

To apply the schema to your database:

```bash
psql -U your_user -d your_database -f schema.sql


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
