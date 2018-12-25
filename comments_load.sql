
--TO LOAD DATABASE: run postgres and run: psql -d postgres -U isdb -f comments_load.sql

DROP TABLE IF EXISTS Comments CASCADE;


CREATE TABLE Comments (
    id                        INTEGER,
    approveDate               TEXT,
    articleID                 TEXT,
    articleWordCount          INTEGER,
    commentBody               TEXT,
    commentID                 NUMERIC,
    commentSequence           NUMERIC,
    commentTitle              TEXT,
    commentType               TEXT,
    createDate                TEXT,
    depth                     NUMERIC,
    editorsSelection          BOOLEAN,
    inReplyTo                 INTEGER,
    newDesk                   TEXT,
    parentID                  NUMERIC,
    parentUserDisplayName     TEXT,
    permID                    TEXT,
    picURL                    TEXT,
    printPage                 INTEGER,
    recommendations           INTEGER,
    recommendedFlag           TEXT,
    replyCount                INTEGER,
    reportAbuseFlag           TEXT,
    sectionName               TEXT,
    sharing                   INTEGER,
    status                    TEXT,
    timespeople               INTEGER,
    trusted                   INTEGER,
    typeOfMaterial            TEXT,
    updateDate                TEXT,
    userDisplayName           TEXT,
    userID                    NUMERIC,
    userLocation              TEXT,
    userTitle                 TEXT,
    userURL                   TEXT,
    Polarity                  NUMERIC,
    Subjectivity              NUMERIC,
    Entropy                   NUMERIC
);

\copy Comments FROM 'CommentsFinal_df.csv' csv encoding 'ISO8859-1' header;
