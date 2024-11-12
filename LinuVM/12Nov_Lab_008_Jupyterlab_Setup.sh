#!/bin/bash

# Create and navigate into Lab08 directory
mkdir Lab08
cd Lab08

# Update package list and install python3-venv
sudo apt-get update
sudo apt-get install -y python3-venv  # Added '-y' for automatic 'yes' to prompt

# Create a virtual environment named 'pikachu'
python3 -m venv pikachu

# List files to confirm 'pikachu' directory exists
ls


# Activate the virtual environment using 'source'
source pikachu/bin/activate

# Install Jupyter in the virtual environment
pip3 install jupyter 
# Start Jupyternotebook
jupyter notebook --generate-config
nohup jupyter notebook --no-browser --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.password='' &

