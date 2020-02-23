
-- date_time  DATETIME PRIMARY KEY
-- person     VARCHAR(255)
-- subject    VARCHAR(255)
-- duration   TIME
-- kb_size    INTEGER
INSERT INTO recorded_conversation (date_time, person, subject, duration, kb_size)
VALUES 
('2020-1-1 07:30:00',   'John',   'Work',   '00:05:00',   384 ),
('2020-1-1 09:00:00',   'Josh',   'Work',   '00:02:00',   300 ),
('2020-1-1 11:50:00',   'Jones',  'Client', '00:10:00',   700 ),
('2020-1-1 12:30:00',   'Jen',    'Work',   '00:15:00',   1001),
('2020-1-1 16:00:00',   'James',  'Client', '00:10:00',   701 );


-- id         INTEGER PRIMARY KEY AUTO_INCREMENT
-- subject    VARCHAR(255)
-- date       DATE
-- time       TIME
-- duration   TIME
INSERT INTO stranger_conversation (id, subject, date, time, duration)
VALUES
(1, 'Weather',  '2020-1-1',   '07:00:00', '00:05:00'),
(2, 'News',     '2020-1-1',   '07:20:00', '00:03:00'),
(3, 'Crime',    '2020-1-1',   '12:15:00', '00:10:00'),
(4, 'Traffic',  '2020-1-1',   '17:20:00', '00:07:00'),
(5, 'Food',     '2020-1-1',   '18:00:00', '00:05:00');