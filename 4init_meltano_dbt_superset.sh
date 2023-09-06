finch exec -it -w /workspaces/volumes superset meltano init $Project_Name 

# finch exec -it -w /workspaces/volumes/$Project_Name superset meltano add loader target-duckdb
# finch exec -it -w /workspaces/volumes/$Project_Name superset meltano add utility dbt-duckdb

# finch exec -it -w /workspaces/volumes/$Project_Name superset meltano install utility target-duckdb
# finch exec -it -w /workspaces/volumes/$Project_Name superset meltano install utility dbt-duckdb