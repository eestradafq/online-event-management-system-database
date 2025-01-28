USE online_event_management_system_db;

INSERT INTO front_desk_user
    (username, created_date, modified_date, created_by, modified_by)
VALUES ('john_doe', '2025-01-01 08:30:00', NULL, 'admin', NULL),
       ('jane_smith', '2025-01-02 09:15:00', '2025-02-01 10:00:00', 'admin', 'manager'),
       ('robert_brown', '2025-01-03 10:00:00', NULL, 'admin', NULL),
       ('emily_carter', '2025-01-04 11:45:00', NULL, 'system', NULL),
       ('michael_adams', '2025-01-05 12:10:00', NULL, 'admin', NULL),
       ('linda_white', '2025-01-06 07:55:00', '2025-01-06 18:30:00', 'admin', 'supervisor'),
       ('william_jones', '2025-01-07 09:20:00', '2025-01-10 17:00:00', 'admin', 'manager'),
       ('sarah_lee', '2025-01-08 09:10:00', NULL, 'system', NULL),
       ('david_thomas', '2025-01-09 13:00:00', NULL, 'admin', NULL),
       ('sophia_garcia', '2025-01-10 15:30:00', '2025-01-12 18:10:00', 'admin', 'supervisor');


GO;

INSERT INTO holiday
(holiday_date, reason, created_date, modified_date, created_by, modified_by)
VALUES ('2025-01-01', 'New Year''s Day', '2025-01-01 08:00:00', NULL, 'admin', NULL),
       ('2025-12-25', 'Christmas', '2025-01-02 09:00:00', NULL, 'admin', NULL),
       ('2025-07-04', 'Independence Day', '2025-01-03 10:00:00', NULL, 'system', NULL),
       ('2025-11-27', 'Thanksgiving', '2025-01-04 11:15:00', NULL, 'admin', NULL),
       ('2025-05-26', 'Memorial Day', '2025-01-05 12:20:00', NULL, 'admin', NULL),
       ('2025-09-01', 'Labor Day', '2025-01-06 13:30:00', '2025-01-06 16:00:00', 'system', 'admin'),
       ('2025-02-14', 'Valentine''s Day', '2025-01-07 14:40:00', NULL, 'admin', NULL),
       ('2025-10-31', 'Halloween', '2025-01-08 15:45:00', NULL, 'system', NULL),
       ('2025-03-17', 'St. Patrick''s Day', '2025-01-09 10:10:00', NULL, 'admin', NULL),
       ('2025-04-12', 'Easter Sunday', '2025-01-10 08:20:00', '2025-01-15 09:00:00', 'admin', 'supervisor');


GO;

INSERT INTO customers
(name, address, phone, email, type, status, created_date, modified_date, created_by, modified_by)
VALUES ('John Carter', '123 Main St', '555-1234', 'john.carter@example.com', 'Regular', 1, '2025-01-01 09:00:00', NULL,
        'admin', NULL),
       ('Emily Smith', '456 Elm St', '555-5678', 'emily.smith@example.com', 'VIP', 1, '2025-01-02 10:00:00',
        '2025-01-02 12:00:00', 'admin', 'manager'),
       ('Michael Johnson', '789 Oak Ave', '555-2468', 'michael.johnson@example.com', 'Regular', 1,
        '2025-01-03 11:15:00', NULL, 'admin', NULL),
       ('Linda Brown', '321 Maple Rd', '555-1357', 'linda.brown@example.com', 'VIP', 0, '2025-01-04 12:10:00', NULL,
        'system', NULL),
       ('David Martinez', '567 Pine Blvd', '555-9753', 'david.martinez@example.com', 'Regular', 1,
        '2025-01-05 15:30:00', NULL, 'admin', NULL),
       ('Sarah Wilson', '910 Walnut Dr', '555-8642', 'sarah.wilson@example.com', 'VIP', 1, '2025-01-06 08:45:00',
        '2025-01-07 08:45:00', 'admin', 'admin'),
       ('Daniel Thompson', '234 Cedar Lane', '555-7777', 'daniel.thompson@example.com', 'Regular', 1,
        '2025-01-07 09:00:00', NULL, 'system', NULL),
       ('Lisa Hall', '678 Spruce Way', '555-8888', 'lisa.hall@example.com', 'VIP', 0, '2025-01-08 10:00:00',
        '2025-01-08 12:00:00', 'admin', 'supervisor'),
       ('Robert Davis', '902 Redwood Ct', '555-3333', 'robert.davis@example.com', 'Regular', 1, '2025-01-09 14:25:00',
        NULL, 'admin', NULL),
       ('James Robinson', '1001 Magnolia Pl', '555-4444', 'james.robinson@example.com', 'VIP', 1, '2025-01-10 16:40:00',
        NULL, 'system', NULL);


GO;

INSERT INTO reservation
(user_id, guest_count, reservation_date, status, comments, created_date, modified_date, created_by, modified_by)
VALUES (1, 4, '2025-01-15 19:00:00', 'Confirmed', 'Family gathering', '2025-01-10 10:00:00', NULL, 'admin', NULL),
       (2, 2, '2025-02-10 20:00:00', 'Pending', 'Pending deposit confirmation', '2025-01-12 11:00:00',
        '2025-01-15 11:20:00', 'admin', 'manager'),
       (3, 10, '2025-02-14 18:30:00', 'Confirmed', 'Requires large table', '2025-01-13 09:30:00', NULL, 'admin', NULL),
       (4, 3, '2025-03-01 17:00:00', 'Cancelled', 'Client cancellation', '2025-01-14 14:00:00', NULL, 'system', NULL),
       (5, 5, '2025-03-15 20:00:00', 'Pending', 'Awaiting final confirmation', '2025-01-20 08:00:00', NULL, 'admin',
        NULL),
       (6, 2, '2025-04-10 21:00:00', 'Confirmed', 'Private celebration', '2025-02-01 09:15:00', '2025-02-10 11:00:00',
        'admin', 'admin'),
       (7, 8, '2025-05-05 19:30:00', 'Confirmed', 'Bachelorette party', '2025-02-05 10:25:00', NULL, 'system', NULL),
       (8, 3, '2025-06-22 18:45:00', 'Pending', 'Corporate event', '2025-02-10 12:20:00', NULL, 'admin', NULL),
       (9, 12, '2025-07-01 19:00:00', 'Confirmed', 'Team meeting', '2025-02-15 14:00:00', NULL, 'admin', NULL),
       (10, 6, '2025-08-12 20:00:00', 'Cancelled', 'Cancelled due to force majeure', '2025-02-20 16:00:00', NULL,
        'system', NULL);

