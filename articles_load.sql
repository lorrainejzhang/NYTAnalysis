
--TO LOAD DATABASE: run postgres and run: psql -d postgres -U isdb -f articles_load.sql

DROP TABLE IF EXISTS Articles CASCADE;


CREATE TABLE Articles (
    id                        INTEGER,
    abstract                  TEXT,
    articleID                 TEXT,
    articleWordCount          INTEGER,
    byline                    TEXT,
    documentType              TEXT,
    headline                  TEXT,
    keywords                  TEXT,
    multimedia                INTEGER,
    newDesk                   TEXT,
    printPage                 INTEGER,
    pubDate                   TEXT,
    sectionName               TEXT,
    snippet                   TEXT,
    source                    TEXT,
    typeOfMaterial            TEXT,
    webURL                    TEXT,
    HeadlinePolarity          NUMERIC,
    HeadlineSubjectivity      NUMERIC,
    SnippetPolarity           NUMERIC,
    SnippetSubjectivity       NUMERIC,
    SnippetEntropy            NUMERIC
);

\copy Articles FROM 'ArticlesFinal_df.csv' csv encoding 'ISO8859-1' header;
