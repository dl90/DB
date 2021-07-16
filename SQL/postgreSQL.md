# PostgreSQL

```bash
# hba file
SHOW hba_file;

# login
psql postgres -U username
psql -d dbname -U username

# list dbs
psql -l
psql dbname

# create db
createdb dbname

# drop db
dropdb -f dbname

# create user
createuser user

# see users/roles
\du+

# list tables
\dt

# describe table
\d table_name

# loading from file
\i path_to_file.sql
```

```sql
-- revoke user permissions
REVOKE ALL PRIVILEGES ON ALL TABLES IN SCHEMA public FROM node;
REVOKE ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public FROM node;
REVOKE ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public FROM node;
```
