DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS user_watchlist CASCADE;
DROP TABLE IF EXISTS watchlists CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);
/*
CREATE TABLE watchlists (
  id SERIAL PRIMARY KEY NOT NULL,
  movie_id INTEGER NOT NULL,
  date_added DATE NOT NULL
);
*/

CREATE TABLE user_watchlist (
  id SERIAL PRIMARY KEY NOT NULL,
  user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  movie_id INTEGER NOT NULL,
  UNIQUE(user_id, movie_id)
);