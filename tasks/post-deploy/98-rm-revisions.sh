#!/bin/sh

wp post delete $(wp post list --post_type='revision' --year=2019 --format=ids ) --force
