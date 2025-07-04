DROP VIEW IF EXISTS monbur_dic;
CREATE VIEW monbur_dic AS
SELECT
    w.word_id,
    CASE 
        WHEN w.word LIKE '%—%' THEN substr(w.word, 1, instr(w.word, '—') - 1)
        WHEN w.word LIKE '%-%' THEN substr(w.word, 1, instr(w.word, '-') - 1)
        ELSE w.word 
    END AS mon_word,
    COALESCE(w.pronunciation, '') AS pronunciation,
    GROUP_CONCAT(COALESCE(p.pos_id, ''), ',') AS pos_ids,
    GROUP_CONCAT(p.pos_ENname, ', ') AS pos_ENnames,
    GROUP_CONCAT(p.pos_Mmname, ', ') AS pos_Mmnames,
    GROUP_CONCAT(COALESCE(s.synonym, ''), ', ') AS synonyms_text,

    GROUP_CONCAT(COALESCE(d.definition_id, ''), '\n') AS definition_ids,
    GROUP_CONCAT(COALESCE(d.definition, ''), '\n') AS definition,

    GROUP_CONCAT(
        CASE
            WHEN d.example IS NULL THEN '-'
            WHEN d.example LIKE '% || %' THEN REPLACE(d.example, ' || ', CHAR(10) || CHAR(10))
            WHEN d.example LIKE '%\\n%' THEN REPLACE(d.example, '\\n', CHAR(10))
            WHEN d.example LIKE '%\\r%' THEN REPLACE(d.example, '\\r', CHAR(10))
            ELSE d.example
        END,
        CHAR(10)
    ) AS example
FROM Word w
LEFT JOIN Definition d ON w.word_id = d.word_id
LEFT JOIN PartOfSpeech p ON d.pos_id = p.pos_id
LEFT JOIN Synonym s ON w.word_id = s.word_id

GROUP BY w.word_id, mon_word, d.definition_id
ORDER BY mon_word;
