DROP VIEW IF EXISTS CategoryHierarchy;

CREATE VIEW CategoryHierarchy AS
WITH RECURSIVE CategoryPath AS (
    -- Anchor member: Select top-level categories (those with no parent)
    SELECT
        c.category_id,
        c.en_category_name,
        c.mm_category_name,
        c.mon_category_name,
        c.parent_category_id,
        0 AS level, -- Level 0 for top-level categories
        c.en_category_name AS en_path, -- Path in English
        c.mm_category_name AS mm_path  -- Path in Myanmar
    FROM
        Category AS c
    WHERE
        c.parent_category_id IS NULL

    UNION ALL

    -- Recursive member: Join to find children categories
    SELECT
        c.category_id,
        c.en_category_name,
        c.mm_category_name,
        c.mon_category_name,
        c.parent_category_id,
        cp.level + 1 AS level, -- Increment level for children
        cp.en_path || ' -> ' || c.en_category_name AS en_path, -- Build English path
        cp.mm_path || ' -> ' || c.mm_category_name AS mm_path  -- Build Myanmar path
    FROM
        Category AS c
    INNER JOIN
        CategoryPath AS cp ON c.parent_category_id = cp.category_id
)
SELECT
    category_id,
    en_category_name,
    mm_category_name,
    mon_category_name,
    parent_category_id,
    level,
    en_path,
    mm_path
FROM
    CategoryPath
ORDER BY
    en_path;