WITH RECURSIVE r AS (
    -- стартовая часть рекурсии (т.н. "anchor")
    SELECT 1 AS i

    UNION ALL

    -- рекурсивная часть
    SELECT i + 1 AS i
    FROM r
    WHERE i < 10)
SELECT *
FROM r;


