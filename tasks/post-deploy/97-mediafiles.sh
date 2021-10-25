#!/bin/sh
if [ "$APP_ENV" = "development" ]; then
  if [ $(wp option pluck planet4_migrations 2 id) = "P4\MasterTheme\Migrations\M004UpdateMissingMediaPath" ]; then
    wp option patch update planet4_migrations 2 id "P4\MasterTheme\Migrations\M004UpdateMissingMediaPath-old"
    echo "Run P4_Activator"
    wp p4-run-activator
    wp option get planet4_migrations
  else
    echo "Skip running P4_Activator."
  fi
fi
