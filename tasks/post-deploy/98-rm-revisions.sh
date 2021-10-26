#!/bin/sh
if [ "$APP_ENV" = "production" ]; then
  wp post delete $(wp post list --post_type='revision' --year=2020 --format=ids ) --force
fi 