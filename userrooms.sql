

-- @block
SELECT
    Users.id AS user_id,
    Rooms.id AS room_id,
    email,
    street
FROM Users
LEFT JOIN Rooms
ON Rooms.owner_id = Users.id;