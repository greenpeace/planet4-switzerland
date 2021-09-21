#!/bin/sh

if [ "$APP_ENV" = "development" ]; then
  echo "Old revisions check:"
  wp post delete $(wp post list --post_type='revision' --year=2016 --format=ids ) --force
  wp post delete $(wp post list --post_type='revision' --year=2017 --format=ids ) --force
  wp post delete $(wp post list --post_type='revision' --year=2018 --format=ids ) --force
  wp post delete $(wp post list --post_type='revision' --year=2019 --format=ids ) --force
fi




