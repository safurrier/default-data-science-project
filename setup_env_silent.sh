#!/bin/bash 

# initialize git repo and make first commit
git init
git add .
git commit -a -m 'first commit'

project_name=default_project_env
printf "Project name is: "$project_name
printf "\nThis will be conda env name"
# Create conda environment with project name
conda create -y --name $project_name
# Activate environment
source activate $project_name
# Install Requirements  
# conda install -y --file requirements.txt
pip install -r requirements.txt

# Install src as local package
#pip install -e .