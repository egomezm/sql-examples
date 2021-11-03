
-- Basic Select
SELECT
    *
FROM dual
;

-- Aliases (replacing columnnames with custom name)
SELECT
	1 AS my_id
FROM dual
;

-- Unions (Consolidating multiple queries into a single result)
SELECT
	'A'
FROM dual UNION ALL
SELECT
	'B'
FROM dual UNION ALL
SELECT
	'C'
FROM dual UNION ALL
SELECT
	'D'
FROM dual
;

-- WITH statemnet and ORDER BY
WITH temp AS (
	SELECT
	'A' AS id
FROM dual UNION ALL
SELECT
	'B' AS id
FROM dual UNION ALL
SELECT
	'C' AS id
FROM dual UNION ALL
SELECT
	'D' AS id
FROM dual
)
select sys_connect_by_path( id, ';' )
from temp
connect by nocycle id <> prior id
;;
