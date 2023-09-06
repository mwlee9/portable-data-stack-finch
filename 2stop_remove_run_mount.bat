finch stop superset

finch rm superset

finch run \
		-dp 8888:8888 \
		-p 4040:4040 \
		-p 8088:8088 \
		-t \
	 	--env MELTANO_CLI_LOG_LEVEL=WARNING \
		--env MDS_SCENARIOS=10000 \
		--env MDS_INCLUDE_ACTUALS=true \
		--env MDS_LATEST_RATINGS=true \
		--env MDS_ENABLE_EXPORT=true \
		--env ENVIRONMENT=docker \
		--mount type=bind,source=./VOLUMES,target=/workspaces/volumes \
		--name superset \
		lee/superset \
		jupyter lab --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --allow-root

pause
