#!/bin/sh

wp post delete $(wp post list --post_type='revision' --year=2021 --format=ids ) --force
