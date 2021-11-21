CREATE OR REPLACE FUNCTION find(l VARCHAR(50), f VARCHAR(50), m VARCHAR(50))
RETURNS table(a VARCHAR(50),b VARCHAR(50),c VARCHAR(50))
LANGUAGE plpgsql AS
$$
BEGIN
SELECT lname,fname,mname FROM men WHERE lname = l && fname = f && mname = m;
END;
$$;
