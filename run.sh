#/usr/bin/env bash

source activate dod
jupyter nbconvert --to script read_data.ipynb
python read_data.py
source deactivate
