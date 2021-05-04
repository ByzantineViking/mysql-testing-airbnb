

-- @block
CREATE TABLE Bookings(
    id INT AUTO_INCREMENT,
    guest_id INT NOT NULL,
    room_id INT NOT NULL,
    check_in DATETIME,
    PRIMARY KEY (id),
    FOREIGN KEY (guest_id) REFERENCES Users(id),
    FOREIGN KEY (room_id) REFERENCES Rooms(id)
);

-- @block
INSERT INTO Bookings (guest_id, room_id, check_in)
VALUES
    (1, 4, '2019-01-01'),
    (1, 3, '2019-01-02'),
    (1, 1, '2020-10-10')
;

-- @block
SELECT * FROM Users;

-- @block
INSERT INTO Bookings (guest_id, room_id, check_in)
VALUES
    (5, 1, '2021-01-01')
;

-- @block
DROP TABLE Bookings;

-- @block
SELECT * FROM Bookings;

-- @block Rooms user is booked in
SELECT
    guest_id,
    street,
    check_in
FROM Bookings
INNER JOIN Rooms ON Rooms.owner_id = guest_id
WHERE guest_id = 1
AND Rooms.id = room_id;

-- @block
SELECT * FROM Rooms;

-- @block Guests who stayed in a room
SELECT
    room_id,
    guest_id,
    email,
    bio
FROM Bookings
INNER JOIN Users ON Users.id = guest_id
WHERE room_id = 1;