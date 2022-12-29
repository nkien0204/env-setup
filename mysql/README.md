## Mysql Docker

### Setup
Default root user:
- Username: `root`
- Password: `MYSQL_ROOT_PASSWORD` in `docker-compose.yml` file
### Run
```bash
docker compose up
```
### Modify container
After container is runned, go inside the container by `docker exec` command and create new user, new database,...
