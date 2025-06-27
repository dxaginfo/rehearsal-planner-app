-- Users table
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100) UNIQUE NOT NULL,
  password_hash TEXT,
  role VARCHAR(20)
);

-- Rehearsals table
CREATE TABLE IF NOT EXISTS rehearsals (
  id SERIAL PRIMARY KEY,
  date DATE NOT NULL,
  time TIME NOT NULL,
  location VARCHAR(255),
  organizer_id INT REFERENCES users(id)
);

-- Attendance table
CREATE TABLE IF NOT EXISTS attendance (
  id SERIAL PRIMARY KEY,
  rehearsal_id INT REFERENCES rehearsals(id),
  user_id INT REFERENCES users(id),
  status VARCHAR(20)
);
