# Partition Performance Report

## 🎯 Objective

Improve performance of queries on the `bookings` table by applying partitioning based on the `start_date` column.

---

## 🛠️ What We Did

- Dropped the existing `bookings` table (it was referenced by a foreign key and lacked the partition column).
- Recreated the `bookings` table with the following changes:
  - Added `start_date` column.
  - Set `PRIMARY KEY (id, start_date)` to comply with partitioning rules.
- Partitioned the table using:
  
  ```sql
  PARTITION BY RANGE (YEAR(start_date)) (
      PARTITION p2020 VALUES LESS THAN (2021),
      PARTITION p2021 VALUES LESS THAN (2022),
      PARTITION p2022 VALUES LESS THAN (2023),
      PARTITION pmax VALUES LESS THAN MAXVALUE
  );
