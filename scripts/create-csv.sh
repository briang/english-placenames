#!/bin/bash

DB_FILE="data.db"
SQL="
SELECT name1 as name, local_type as type, country as country
FROM data
WHERE type = 'populatedPlace'
ORDER BY name, country"

sqlite3 $DB_FILE ".mode csv" ".headers on" "$SQL" > places.csv
