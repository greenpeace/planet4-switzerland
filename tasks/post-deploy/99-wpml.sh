#!/bin/bash

echo "Set WPML_ST_SYNC_TRANSLATION_FILES..."
wp config set WPML_ST_SYNC_TRANSLATION_FILES true --raw

# This query deletes all translation strings that don't have a translation
echo "Clean translation tables"
wp db query "DELETE FROM wp_icl_strings WHERE id NOT IN (SELECT string_id FROM wp_icl_string_translations);"
