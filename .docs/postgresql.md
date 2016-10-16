# PostgreSQL

## Create superuser

```
FATAL (invalid_authorization_specification): role "postgres" does not exist
```

In development, can be fixed with:

```sh
$ createuser -s postgres
```
