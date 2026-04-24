USE waitlist_system;

DROP TABLE IF EXISTS waitlist_log;
DROP TABLE IF EXISTS notification;
DROP TABLE IF EXISTS waitlist_entry;
DROP TABLE IF EXISTS status;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	email VARCHAR(100),
	preferred_contact_method VARCHAR(10) NOT NULL
		CHECK (preferred_contact_method IN ('Text', 'Email'))
);	

CREATE TABLE staff (
   staff_id INT PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(100) NOT NULL,
   last_name VARCHAR(100) NOT NULL,
   username VARCHAR(20) NOT NULL UNIQUE,
   password_hashed VARCHAR(255) NOT NULL
);

CREATE TABLE status (
    status_id INT PRIMARY KEY AUTO_INCREMENT,
    status_name VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE waitlist_entry (
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    status_id INT NOT NULL,
    party_size INT NOT NULL,
    requested_reservation_time DATETIME,
    check_in_type VARCHAR(10) NOT NULL
		CHECK (check_in_type IN ('Walk-in', 'Text', 'Web-app')),
    notes TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (status_id) REFERENCES status(status_id)
);

CREATE TABLE notification (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    entry_id INT NOT NULL,
    notification_type VARCHAR(10) NOT NULL
		CHECK (notification_type IN ('Text', 'Email')),
    notification_text TEXT NOT NULL,
    sent_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    delivery_status VARCHAR(15) NOT NULL 		
		CHECK (delivery_status IN ('Sent', 'Not-delivered')),
    
    FOREIGN KEY (entry_id) REFERENCES waitlist_entry(entry_id)
);

CREATE TABLE waitlist_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    entry_id INT NOT NULL,
    action_type VARCHAR(50) NOT NULL,
    occurrence_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    notes TEXT,
    
    FOREIGN KEY (entry_id) REFERENCES waitlist_entry(entry_id)
);

