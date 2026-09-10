# full rebuild of the py3 conda environment: wipes it, clears the pip cache,
# and reinstalls everything from scratch so pygeon/porepy (and all other deps)
# are guaranteed to be re-fetched at their current git HEAD, not a cached copy

# get the python version
conda activate py3
PYVER=$(conda run -n py3 python -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")

# deactivate the environments
conda deactivate

# remove py3, it will be recreated
conda remove -y -n py3 --all

# cleanup the cache
rm -rf ~/.cache/pip

# create again the environment installing everything from scratch
conda create -y -n py3 python=$PYVER
conda activate py3

conda install -y jupyter

cd ~/lab_numgeo
pip install -e .