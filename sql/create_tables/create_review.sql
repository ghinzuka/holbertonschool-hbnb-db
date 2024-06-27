CREATE DATABASE IF NOT EXISTS hbnb;

USE hbnb;

CREATE TABLE Review (
    id VARCHAR(36) PRIMARY KEY,
    place_id VARCHAR(36),
    user_id VARCHAR(36),
    comment TEXT NOT NULL,
    rating FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (place_id) REFERENCES Place(id),
    FOREIGN KEY (user_id) REFERENCES User(id)
);
