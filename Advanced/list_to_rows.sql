/* 
List to Rows (oposite of agreagtion function)
*/

-- Enter Binding Variables :str (list: 1,2,3)
SELECT 
    DISTINCT(TRIM(regexp_substr(:str, '^,+', 1, level))) AS item
FROM dual
CONNECT BY
    instr(:str, ',', 1, level - 1) > 0
ORDER BY item asc    
;

-- hardcoded
SELECT 
    DISTINCT(TRIM(regexp_substr('1,2,3,4,5,6,7,8,9', '^,+', 1, level))) AS item
FROM dual
CONNECT BY
    instr('1,2,3,4,5,6,7,8,9', ',', 1, level - 1) > 0
ORDER BY item asc    
;