# lightweight update: force-reinstall only pygeon and porepy at the latest
# commit on their tracked branches (main / develop), leaving the rest of the
# environment untouched. Faster than update_py.sh, but relies on pip actually
# re-cloning the branch tip rather than a cached copy

pip install --force-reinstall --no-deps \
    "pygeon @ git+https://github.com/compgeo-mox/pygeon.git@main" \
    "porepy[development,testing] @ git+https://github.com/pmgbergen/porepy.git@develop"
