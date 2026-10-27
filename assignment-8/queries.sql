-- Question 1: Everything in a given room, grouped by kind (inventory number, kind, model, date).
-- Returns all devices located in 'Room 101', ordered and grouped by their kind and inventory number.
SELECT 
    d.inventory_number,
    d.kind,
    d.model,
    d.purchase_date
FROM devices d
JOIN rooms r ON d.room_id = r.id
WHERE r.name = 'Room 101'
ORDER BY d.kind, d.inventory_number;


-- Question 2: Equipment older than 5 years, with its exact age, oldest first.
-- Returns all equipment purchased more than 5 years ago, calculating the exact age using AGE(), sorted with the oldest device first.
SELECT 
    inventory_number,
    kind,
    model,
    purchase_date,
    AGE(CURRENT_DATE, purchase_date) AS exact_age
FROM devices
WHERE purchase_date < CURRENT_DATE - INTERVAL '5 years'
ORDER BY purchase_date ASC;
