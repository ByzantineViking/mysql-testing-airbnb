

-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);



-- @block
INSERT INTO Users (email, bio, country)
VALUES
    ('hello1@world.com', 'bio 1', 'fi'),
    ('hello2@world.com', 'bio 2', 'sw'),
    ('hello3@world.com', 'bio 3', 'dn')


-- @block
SELECT email, id FROM Users

WHERE country = 'us'
OR id > 1

ORDER BY id ASC
LIMIT 2;


-- @block
SELECT email, id FROM Users

WHERE email LIKE 'hello%'

ORDER BY id ASC


-- @block
CREATE INDEX email_index ON Users(email);



