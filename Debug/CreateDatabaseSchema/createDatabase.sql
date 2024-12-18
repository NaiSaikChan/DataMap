USE mondictionary;

-- Drop tables in reverse order to respect foreign key constraints
DROP TABLE IF EXISTS synonyms;
DROP TABLE IF EXISTS definitions;
DROP TABLE IF EXISTS words;
DROP TABLE IF EXISTS languages;
DROP TABLE IF EXISTS pos;

-- First create pos table since it's referenced by others
CREATE TABLE pos (
    pos_id INT AUTO_INCREMENT PRIMARY KEY,
    pos_mon VARCHAR(100) NOT NULL,
    pos_mn VARCHAR(100) NOT NULL,
    pos_myanmar VARCHAR(100) NOT NULL,
    pos_mm VARCHAR(100) NOT NULL,
    pos_english VARCHAR(100) NOT NULL,
    pos_en VARCHAR(100) NOT NULL,
    pos_thai VARCHAR(100) NOT NULL,
    pos_th VARCHAR(100) NOT NULL
);

CREATE TABLE languages (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL
);

CREATE TABLE words (
    word_id INT AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(255) NOT NULL,
    pronunciation VARCHAR(255),
    language_id INT,
    FOREIGN KEY (language_id) REFERENCES languages(language_id)
);

CREATE TABLE definitions (
    def_id INT AUTO_INCREMENT PRIMARY KEY,
    word_id INT,
    language_id INT,
    pos_id INT,
    definition TEXT NOT NULL,
    example TEXT NOT NULL,
    FOREIGN KEY (word_id) REFERENCES words(word_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    FOREIGN KEY (pos_id) REFERENCES pos(pos_id)
);

CREATE TABLE synonyms (
    synonym_id INT AUTO_INCREMENT PRIMARY KEY,
    word_id INT,
    language_id INT,
    synonym TEXT NOT NULL,
    FOREIGN KEY (word_id) REFERENCES words(word_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id)
);