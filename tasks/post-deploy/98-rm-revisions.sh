#!/bin/sh

wp post delete $(wp post list --post_type='revision' --year=2016 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2017 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2018 --format=ids ) --force
