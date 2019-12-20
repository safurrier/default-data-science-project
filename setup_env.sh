# initialize git repo and make first commit
git init
git add .
git commit -a -m 'first commit'

printf "\n\n\n"
read -p "Enter project name (will be used as name for a new conda env): " name
project_name=${name:-data_science_project}
printf "\n\n\n"

# Create conda environment with project name
conda create -y --name $project_name python jupyter ipykernel
# Activate environment
source activate $project_name
# Attach kernel of this environment for use with jupyter 
python -m ipykernel install --user --name $project_name --display-name $project_name

# Add conda forge as an install channel
conda config -add channels conda-forge

# Double check by  
make requirements