USE waitlist_system;

INSERT INTO customer (first_name, last_name, phone_number, email, preferred_contact_method) VALUES
('Dongthi', 'Nguyen', '4435551234', 'dongthi.nguyen@gmail.com', 'Text'),
('Steven', 'Zhang', '4105555678', 'steven.zhang@gmail.com', 'Email'),
('Chris', 'Song', '3015558899', 'chris.song@gmail.com', 'Text'),
('Aaki', 'Roka', '6675551122', 'aaki.roka@gmail.com', 'Email'),
('Vivian', 'Tran', '2405553344', 'vivian.tran@gmail.com', 'Text');

INSERT INTO staff(first_name, last_name, username, password_hashed) VALUES
('Kevin', 'Nguyen', 'Knguyen', 'hashed_pw_3'),
('Vivian', 'Pham', 'Vpham', 'hashed_pw_2'),
('Kim', 'Tran', 'Ktran', 'hashed_pw_1');

INSERT INTO status (status_name) VALUES
('Waiting'),
('Ready'),
('Notified'),
('Seated'),
('Cancelled'),
('No-Show');

INSERT INTO waitlist_entry (customer_id, staff_id, status_id, party_size, requested_reservation_time, check_in_type, notes) VALUES
(1, 1, 1, 2, '2026-04-04 18:30:00', 'Walk-in', 'Window seat preferred'),
(2, 1, 1, 4, '2026-04-04 19:00:00', 'Web-app', 'Birthday celebration'),
(3, 2, 2, 3, '2026-04-04 18:45:00', 'Text', 'Allergic to peanuts'),
(4, 2, 3, 5, '2026-04-04 19:15:00', 'Walk-in', NULL),
(5, 3, 4, 2, '2026-04-04 18:20:00', 'Web-app', 'VIP customer');


INSERT INTO notification (entry_id, notification_type, notification_text, delivery_status) VALUES
(3, 'Text', 'Your table is ready!', 'Sent'),
(4, 'Email', 'Please return to the host stand.', 'Sent'),
(2, 'Text', 'You are next in line.', 'Not-delivered');

INSERT INTO waitlist_log (entry_id, action_type, notes) VALUES
(1, 'Created', 'Customer added to waitlist'),
(2, 'Created', 'Reservation made via web'),
(3, 'Status Updated', 'Changed from Waiting to Ready'),
(3, 'Notification Sent', 'Customer notified via text'),
(5, 'Seated', 'Customer has been seated'),
(4, 'Notification Sent', 'Email notification sent');

SELECT * FROM customer;
SELECT * FROM staff;
SELECT * FROM status;
SELECT * FROM waitlist_entry;
SELECT * FROM notification;
SELECT * FROM waitlist_log;