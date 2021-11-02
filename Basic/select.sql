
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
