# Heroku

## Push local database `some_database` to app `some-app`

```sh
$ heroku pg:reset DATABASE --app some-app && heroku pg:push some_database DATABASE_URL --app some-app
```
