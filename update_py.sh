# full refresh of the environment's Python packages: clears the pip cache and
# force-reinstalls jupyter plus lab_numgeo (and therefore pygeon/porepy and
# all other deps) so everything is re-fetched at its current version/git HEAD.
# There is a single conda environment (base) in this container, so there is
# nothing to remove/recreate -- packages are refreshed in place.

# cleanup the cache
rm -rf ~/.cache/pip

conda install -y --force-reinstall jupyter

cd ~/lab_numgeo
pip install --force-reinstall -e .
