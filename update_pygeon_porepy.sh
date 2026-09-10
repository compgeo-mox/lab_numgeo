# lightweight update: force-reinstall only pygeon and porepy at the latest
# commit on their tracked branches (main / develop), leaving the rest of the
# py3 environment untouched. Faster than update_py.sh, but relies on pip
# actually re-cloning the branch tip rather than a cached copy

conda activate py3

pip install --force-reinstall --no-deps \
    "pygeon[development,testing] @ git+https://github.com/compgeo-mox/pygeon.git@main" \
    "porepy[development,testing] @ git+https://github.com/pmgbergen/porepy.git@develop"

conda deactivate
