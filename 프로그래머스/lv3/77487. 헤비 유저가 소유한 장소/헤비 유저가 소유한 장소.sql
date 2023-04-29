WITH H AS (
    SELECT
        HOST_ID
    FROM
        PLACES
    GROUP BY
        HOST_ID
    HAVING
        COUNT(*) > 1
)
SELECT 
    *
FROM
    PLACES
WHERE
    HOST_ID IN (SELECT * FROM H)
ORDER BY
    ID
;
