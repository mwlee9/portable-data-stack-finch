# portable-data-stack-finch
Mac OS friendly data stack powered by Finch. Leverages Meltano to add Superset and Duckdb.

# Example Connection Strings
1. Create your db in Python or Jupyter and note down the directory it was created in: 

import duckdb
con = duckdb.connect("sample.db")

import os
os.getcwd()

2. Load data into your db (you can do this in superset, but recommend creating a script here so it's repeatable). Iris.csv is included as a sample for uploading and testing. HIGHLY RECOMMENDED, as dates are handled differently in duckdb vs. superset when you upload using superset's built in upload mechanism. https://duckdb.org/docs/api/python/data_ingestion.html

3. KILL YOUR JUPYTER KERNEL! DuckDB can only have one concurrent connection. If you're having issues connecting, make sure your Jupyter kernel isn't still connected to the .db file you had created.

4. Open superset at localhost:8088. Navigate to the databases connectors and modify the string to the path you'd created your db above: duckdb:////workspaces//volumes//sample.db

