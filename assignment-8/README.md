# Classroom Inventory Database

### Decisions Made and Why

I created two tables: `rooms` and `devices`. The `devices` table has a foreign key `room_id` referencing `rooms(id)` which is allowed to be `NULL` for devices kept in storage. I used an autoincrementing `id SERIAL PRIMARY KEY` and not `inventory_number` as the primary key because physical sticker numbers can be damaged, mistyped, or changed during re-tagging, so relying on an immutable surrogate key is safer. I do not store device age or storage status as columns because the age can be computed dynamically with `AGE()`, and storage is simply represented by `room_id IS NULL`.
