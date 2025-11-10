#!/bin/sh

# Deletes entries older than 2 years from table wp_swp_analytics
wp db query 'DELETE FROM wp_swp_analytics WHERE wp_swp_analytics.date < (CURDATE() - INTERVAL 2 YEAR);'
