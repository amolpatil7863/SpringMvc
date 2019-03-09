CREATE TABLE users(
  user_id int, 
  user_name varchar(20), 
  enabled tinity(1), 
  primary key(user_id)
);
CREATE TABLE users_roles(
  user_role_id int, 
  user_id int, 
  authority varchar(30), 
  primary key(user_role_id), 
  FOREIGN KEY(user_id) REFERENCES users(user_id)
);
