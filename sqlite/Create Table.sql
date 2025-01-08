-- SQLite
-- Create Languages Table
DROP TABLE IF EXISTS Languages;

CREATE TABLE IF NOT EXISTS Language (
    language_id INTEGER PRIMARY KEY AUTOINCREMENT,
    language_code VARCHAR(10) NOT NULL,
    language_name VARCHAR(100) NOT NULL,
    UNIQUE (language_code)
);

-- Create the Part Of Speech table
DROP TABLE IF EXISTS PartOfSpeech;

CREATE TABLE IF NOT EXISTS PartOfSpeech (
    pos_id INTEGER PRIMARY KEY AUTOINCREMENT,
    pos_ENname VARCHAR(50) NOT NULL,
    pos_ENsymbol VARCHAR(50) NOT NULL,
    pos_Monname VARCHAR(255),
    pos_Monsymbol VARCHAR(50),
    pos_Mmname VARCHAR(255),
    pos_Mmsymbol VARCHAR(50)
);

-- Create Word Table
DROP TABLE IF EXISTS Word;


CREATE TABLE IF NOT EXISTS Word (
    word_id INTEGER PRIMARY KEY AUTOINCREMENT,
    word VARCHAR(1000) NOT NULL,
    pronunciation VARCHAR(500),
    language_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Create Definition Table
DROP TABLE IF EXISTS Definition;


CREATE TABLE IF NOT EXISTS Definition (
    definition_id INTEGER PRIMARY KEY AUTOINCREMENT,
    word_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    pos_id INTEGER NOT NULL,
    definition TEXT NOT NULL,
    example TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (word_id) REFERENCES Word(word_id) ON DELETE CASCADE,
    FOREIGN KEY (pos_id) REFERENCES PartOfSpeech(pos_id),
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Create Synonym Table (Optional)

DROP TABLE IF EXISTS Synonym;

CREATE TABLE IF NOT EXISTS Synonym (
    synonym_id INTEGER PRIMARY KEY AUTOINCREMENT,
    word_id INTEGER NOT NULL,
    language_id INTEGER NOT NULL,
    synonym VARCHAR(500) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (word_id) REFERENCES Word(word_id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Indexes for fast lookups (Optional, depending on performance needs)
CREATE INDEX idx_language_id ON Word (language_id);
CREATE INDEX idx_word_id ON Definition (word_id);
CREATE INDEX idx_word_id_synonym ON Synonym (word_id);