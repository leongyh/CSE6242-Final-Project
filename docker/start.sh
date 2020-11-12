#!/bin/bash

echo "Starting services:"
nohup jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='' --NotebookApp.password='' > /dev/null 2>&1 &
echo "Jupyter notebook started on port 8888"
