ALTER TABLE men DROP CONSTRAINT IF EXISTS men_women;

ALTER TABLE men ADD CONSTRAINT men_women FOREIGN KEY (wife)
        REFERENCES women (id) ON DELETE CASCADE;



