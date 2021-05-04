

-- @block
CREATE TABLE Rooms(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);


-- @block
INSERT INTO Rooms (owner_id, street)
VALUES
    (1, 'jmt 1 b 1'),
    (1, 'jmt 1 b 2'),
    (1, 'jmt 1 b 3'),
    (1, 'jmt 1 b 4')