-- Create the database
CREATE DATABASE IF NOT EXISTS MonDictionary;

-- Use the database
USE MonDictionary;

-- Drop the tables if they exist
DROP TABLE IF EXISTS Synonym;
DROP TABLE IF EXISTS Definition;
DROP TABLE IF EXISTS Word;
DROP TABLE IF EXISTS PartOfSpeech;
DROP TABLE IF EXISTS Languages;

-- Create Languages Table
CREATE TABLE IF NOT EXISTS Language (
    language_id INT AUTO_INCREMENT PRIMARY KEY,
    language_code VARCHAR(10) NOT NULL,
    language_name VARCHAR(100) NOT NULL,
    UNIQUE (language_code)
);

-- Create the Part Of Speech table
CREATE TABLE IF NOT EXISTS PartOfSpeech (
    pos_id INT AUTO_INCREMENT PRIMARY KEY,
    pos_ENname VARCHAR(50) NOT NULL,
    pos_ENsymbol VARCHAR(50) NOT NULL,
    pos_Monname VARCHAR(255) NULL,
    pos_Monsymbol VARCHAR(50) NULL,
    pos_Mmname VARCHAR(255) NULL,
    pos_Mmsymbol VARCHAR(50) NULL
);

-- Create Word Table
CREATE TABLE IF NOT EXISTS Word (
    word_id INT AUTO_INCREMENT PRIMARY KEY,
    word VARCHAR(1000) NOT NULL,
    pronunciation VARCHAR(500),
    language_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Create Definition Table
CREATE TABLE IF NOT EXISTS Definition (
    definition_id INT AUTO_INCREMENT PRIMARY KEY,
    word_id INT NOT NULL,
    language_id INT NOT NULL,
    pos_id INT NOT NULL,
    definition TEXT NOT NULL,
    example TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (word_id) REFERENCES Word(word_id) ON DELETE CASCADE,
    FOREIGN KEY (pos_id) REFERENCES PartOfSpeech(pos_id),
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Create Synonym Table (Optional)
CREATE TABLE IF NOT EXISTS Synonym (
    synonym_id INT AUTO_INCREMENT PRIMARY KEY,
    word_id INT NOT NULL,
    language_id INT NOT NULL,
    synonym VARCHAR(500) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (word_id) REFERENCES Word(word_id) ON DELETE CASCADE,
    FOREIGN KEY (language_id) REFERENCES Language(language_id)
);

-- Indexes for fast lookups (Optional, depending on performance needs)
CREATE INDEX idx_language_id ON Word (language_id);
CREATE INDEX idx_word_id ON Definition (word_id);
CREATE INDEX idx_word_id_synonym ON Synonym (word_id);
