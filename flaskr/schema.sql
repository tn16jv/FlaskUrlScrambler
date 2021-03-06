DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS urls;
DROP TABLE IF EXISTS urlVisits;

CREATE TABLE user (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE urls (
    user_id INTEGER,
    original varchar(512),
    scrambled varchar(256),
    ipv4 varchar(15),
    cookieid varchar (36),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user (id)
);

CREATE TABLE urlVisits (
    scrambled varchar(256),
    ipv4 varchar(15),
    visited TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);