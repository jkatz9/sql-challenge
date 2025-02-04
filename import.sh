#!/bin/bash

# Database credentials
DB_NAME="sql-challenge"
DB_USER="jukatz"
DB_HOST="localhost"  # Change if connecting remotely
DB_PORT="5432"       # Default PostgreSQL port

# Directory containing CSV files
DATA_DIR="data"

# Schema file
SCHEMA_FILE="schema.sql"

# Apply the schema (if needed)
psql -U "$DB_USER" -d "$DB_NAME" -h "$DB_HOST" -p "$DB_PORT" -f "$SCHEMA_FILE"

# Loop through CSV files in the directory
for file in "$DATA_DIR"/*.csv; do
    # Extract table name from filename (assuming table names match CSV filenames)
    TABLE_NAME=$(basename "$file" .csv)

    echo "Importing $file into table $TABLE_NAME..."

    # Import CSV into the table
    psql -U "$DB_USER" -d "$DB_NAME" -h "$DB_HOST" -p "$DB_PORT" -c "\COPY $TABLE_NAME FROM '$file' WITH CSV HEADER;"

    if [ $? -eq 0 ]; then
        echo "Successfully imported $file into $TABLE_NAME"
    else
        echo "Error importing $file into $TABLE_NAME"
    fi
done

echo "All imports completed."
