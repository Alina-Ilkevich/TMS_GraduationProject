CREATE TABLE IF NOT EXISTS "role" (
id SERIAL NOT NULL,
role_name VARCHAR(20) NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS "user" (
id SERIAL NOT NULL,
name VARCHAR(30) NOT NULL,
login VARCHAR(64) NOT NULL,
password VARCHAR(64) NOT NULL,
phone_number VARCHAR(13) NOT NULL,
email VARCHAR(50),
role_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(role_id) REFERENCES "role" (id)
)

CREATE TABLE IF NOT EXISTS "schedule" (
id SERIAL NOT NULL,
start_time TIMESTAMP NOT NULL,
end_time TIMESTAMP NOT NULL,
user_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(user_id) REFERENCES "user" (id)
)

CREATE TABLE IF NOT EXISTS "comment" (
id SERIAL NOT NULL,
comment TEXT NOT NULL,
user_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(user_id) REFERENCES "user" (id)
)

CREATE TABLE IF NOT EXISTS "animal_service" (
id SERIAL NOT NULL,
service_name VARCHAR(100) NOT NULL,
description TEXT,
execution_time TIME NOT NULL,
cost INT NOT NULL,
PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS "client_record" (
id SERIAL NOT NULL,
time TIMESTAMP NOT NULL,
user_id INT NOT NULL,
service_id INT NOT NULL,
master_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY(user_id) REFERENCES "all_user" (id),
FOREIGN KEY(service_id) REFERENCES "service" (id),
FOREIGN KEY(master_id) REFERENCES "user" (id)
)