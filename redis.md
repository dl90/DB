# Redis

```bash
brew services start redis
brew services stop redis

redis-cli

LOLWUT

# new user
ACL SETUSER test allkeys allchannels on +@all -@dangerous >password

# update user (removes all execution privileges)
ACL SETUSER test -@all

ACL SETUUSER test OFF
ACL SETUSER test ON resetpass> new_password

# see all users and privileges
ACL LIST

# show connected clients
CLIENT LIST

# select db
SELECT [1-15]

# get keys
KEYS [* pattern]

# get value
MGET [keys] nonexisting

# check expire
TTL [key]
```
