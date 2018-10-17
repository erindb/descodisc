#/usr/bin/env bash

source activate dod
jupyter nbconvert --to script read_data.ipynb
python read_data.py
source deactivate

source activate skipthoughts
jupyter nbconvert --to script run_skipthoughts.ipynb
python run_skipthoughts.py
source deactivate
