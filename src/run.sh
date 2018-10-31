#/usr/bin/env bash

n_documents=$1
cuda=$2

source activate dod
# read wikitext-2
jupyter nbconvert --to script read_data.ipynb
python read_data.py --n_documents $n_documents

# get arora embeddings
# ...

source deactivate

source activate dissent
jupyter nbconvert --to script run_dissent.ipynb
python run_dissent.py --n_documents $n_documents --gpu_id $cuda
source deactivate

# source activate skipthoughts
# jupyter nbconvert --to script run_skipthoughts.ipynb
# THEANO_FLAGS='device=cuda'$cuda python run_skipthoughts.py --n_documents $n_documents
# source deactivate

# source activate dod
# jupyter nbconvert --to script distances.ipynb
# python distances.py --n_documents $n_documents
# source deactivate

