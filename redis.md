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

# see all users and privileges
ACL LIST
```

## Node

npm i redis
