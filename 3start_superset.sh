finch exec -it superset meltano invoke superset fab create-admin --username admin --firstname admin --lastname admin --email admin@admin.org --password password

finch exec -it superset meltano invoke superset:ui

# NOTE: because it's got the -it flag, the window won't close when the exec is finished. It'll keep logging what's happening in the container for debugging. Helpful for local dev.