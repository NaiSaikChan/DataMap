DROP VIEW IF EXISTS monburmese_dic;
CREATE VIEW monburmese_dic AS
SELECT
    w.word_id,
    w.language_id AS word_languageId,
    -- Extract mon_word before '—' or '-' if present
    CASE 
        WHEN w.word LIKE '%—%' THEN substr(w.word, 1, instr(w.word, '—') - 1)
        WHEN w.word LIKE '%-%' THEN substr(w.word, 1, instr(w.word, '-') - 1)
        ELSE w.word 
    END AS mon_word,
    IFNULL(w.pronunciation, '') AS pronunciation,
    JSON_GROUP_ARRAY(DISTINCT p.pos_id) AS pos_ids,
    JSON_GROUP_ARRAY(DISTINCT p.pos_ENname) AS pos_ENnames,
    JSON_GROUP_ARRAY(DISTINCT p.pos_Mmname) AS pos_Mmnames,
    JSON_GROUP_ARRAY(DISTINCT s.synonym) AS synonyms_text,
    JSON_GROUP_ARRAY(DISTINCT d.definition_id) AS definition_ids,
    JSON_GROUP_ARRAY(DISTINCT d.language_id) AS def_languageId,
    JSON_GROUP_ARRAY(DISTINCT d.definition) AS definitions,
    JSON_GROUP_ARRAY(DISTINCT d.example) AS examples,
    JSON_GROUP_ARRAY(DISTINCT d.category_id) AS category_id
FROM Word w
LEFT JOIN Definition d ON w.word_id = d.word_id
LEFT JOIN PartOfSpeech p ON d.pos_id = p.pos_id
LEFT JOIN Synonym s ON w.word_id = s.word_id
GROUP BY w.word_id, mon_word;