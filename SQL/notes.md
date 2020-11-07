# SQL

## timezone

```sql
SELECT TIMEDIFF(NOW(), UTC_TIMESTAMP);
SELECT @@GLOBAL.time_zone, @@SESSION.time_zone;

SET GLOBAL time_zone = '+0:00';
SET @@global.time_zone = '+00:00';
SET @@session.time_zone = '+00:00';
SET @@system_time_zone =
```

## add user

```sql
CREATE USER 'lendr'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'lendr'@'%' IDENTIFIED BY 'password';
```

## grant privileges

```sql
GRANT ALL ON lendr.* TO 'lendr'@'%';
```

## check privileges

```sql
SHOW GRANTS FOR 'lendr'@'%';
```

## change pw

```sql
ALTER USER 'userName'@'localhost' IDENTIFIED BY 'New-Password-Here';
```
