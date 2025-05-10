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
