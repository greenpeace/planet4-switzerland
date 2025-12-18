#!/bin/sh

wp post delete $(wp post list --post_type='revision' --year=2019 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2020 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2021 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2022 --format=ids ) --force
wp post delete $(wp post list --post_type='revision' --year=2023 --format=ids ) --force
