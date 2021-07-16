# MySQL

```bash
mysql --help -verbose
```

```sql
-- check users
SELECT User FROM mysql.user;

-- add user
CREATE USER 'username'@'ip' IDENTIFIED BY 'password';
CREATE USER 'username'@'%' IDENTIFIED BY 'password';

-- grant privileges
GRANT ALL ON lendr.* TO 'username'@'%';

-- revoke privileges
REVOKE SUPER ON *.* FROM 'username'@'%';

-- check privileges
SHOW GRANTS FOR 'username'@'%';

-- change pw
ALTER USER 'username'@'localhost' IDENTIFIED BY 'New-Password-Here';

-- timezone
SELECT TIMEDIFF(NOW(), UTC_TIMESTAMP);
SELECT @@GLOBAL.time_zone, @@SESSION.time_zone;

SET GLOBAL time_zone = '+0:00';
SET @@global.time_zone = '+00:00';
SET @@session.time_zone = '+00:00';
SET @@system_time_zone =
```
