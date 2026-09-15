#!/bin/sh

wp post delete $(wp post list --post_type='gpch_magredirect' --format=ids) --force
