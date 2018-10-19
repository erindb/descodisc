#/usr/bin/env bash

n_documents=$1

source activate dod
jupyter nbconvert --to script read_data.ipynb
python read_data.py --n_documents $n_documents
source deactivate

source activate skipthoughts
jupyter nbconvert --to script run_skipthoughts.ipynb
python run_skipthoughts.py --n_documents $n_documents
source deactivate

source activate dod
jupyter nbconvert --to script distances.ipynb
python distances.py --n_documents $n_documents
source deactivate

