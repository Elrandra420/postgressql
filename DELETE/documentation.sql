-- ALTER TABLES TO CASCADE
ALTER TABLE rentals
    DROP CONSTRAINT "rentals_cid_fkey",
    DROP CONSTRAINT "rentals_mid_fkey",
    ADD FOREIGN KEY (cid) REFERENCES customers ON DELETE CASCADE,
    ADD FOREIGN KEY (mid) REFERENCES movies ON DELETE CASCADE;

ALTER TABLE department
    DROP CONSTRAINT "department_eid_fkey",
    ADD FOREIGN KEY (eid) REFERENCES employees ON DELETE CASCADE;
    
-- DELETE

SELECT cid, cname FROM customers;

DELETE FROM customers WHERE cid < 5;

SELECT cid, cname FROM customers;
