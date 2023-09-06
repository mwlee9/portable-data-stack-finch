docker exec -it superset meltano invoke superset fab create-admin --username admin --firstname admin --lastname admin --email admin@admin.org --password password

docker exec -it superset meltano invoke superset:ui

pause