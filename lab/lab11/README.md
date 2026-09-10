# Laboratory 11: Coulomb Failure Function on a Fracture

This lab addresses the elasticity equation with [PorePy](https://github.com/pmgbergen/porepy) and [PyGeoN](https://github.com/compgeo-mox/pygeon), and shows how to post-process the resulting tractions along an internal fracture into the Coulomb Failure Function (CFF), a standard indicator of fault reactivation risk. The Multi-Point Stress Approximation (MPSA) method is used for the discretization.

---

## Files Overview

- **ex1.ipynb**
  *Dam filling problem in 2D: a body compressed from the top and the sides, fixed at the bottom, with a fracture running through the domain. The displacement is computed with MPSA, the traction is restricted to the fracture faces and split into normal and tangential components, and the CFF is evaluated and plotted along the fracture.*

- **ex2.ipynb**
  *The same dam filling problem extended to 3D. The domain, boundary conditions, and CFF post-processing follow the same steps as `ex1.ipynb`, generalized to a fracture surface embedded in a 3D grid.*

---

## Main Features

- **Elasticity equation**:
  $$
  \\nabla \\cdot [2\\mu \\epsilon(u) + \\lambda \\nabla \\cdot u\\, I] = -b
  $$
  where $\\epsilon(u)$ is the symmetric gradient, $\\lambda$ and $\\mu$ are Lamé parameters (expressed in terms of Young's modulus $E$ and Poisson ratio $\\nu$), and $b$ is a body force.

- **Coulomb Failure Function**:
  $$
  CFF = \\tau^\\top \\sigma n + \\mu_f\\, n^\\top \\sigma n
  $$
  with $\\mu_f$ the fracture friction coefficient. $CFF < 0$ indicates no slip, $CFF \\geq 0$ indicates slipping.

- **Numerical method**:
  - Multi-Point Stress Approximation (MPSA) via PorePy, with the fracture treated as an internal constraint the grid conforms to.

- **Post-processing**:
  - Traction reconstruction on the fracture faces, projected onto normal and tangential directions.
  - Computation and visualization of the CFF along the fracture, and export of the stress and displacement fields.

---

## Solved notebooks vs. assignments

From `ex2.ipynb` onward, every exercise has a companion `exN_text.ipynb`: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in yourself and run the cells -- an unfinished placeholder raises an immediate `NameError` pointing at the line you still need to complete, and the "Consistency check" cell at the end confirms your result once it is correct. `exN.ipynb` is the full worked solution, useful as a reference or to check your own work. `ex1.ipynb` has no `_text` version, since it is meant to be worked through together.

---

## How to Use

- Start with `ex1.ipynb` -- it introduces the lab's topic and is meant to be followed together.
- For `ex2.ipynb`, open `ex2_text.ipynb` and fill in the `__TODO__` placeholders yourself; use `ex2.ipynb` as the reference solution to check your work or when stuck.
- Run the cells sequentially to reproduce the results and visualizations.
- Use ParaView to inspect the exported `.vtu` files.

---

## Requirements

- Python 3.x
- Jupyter Notebook
- numpy, scipy, matplotlib
- porepy
- pygeon

---

## References

- [PyGeoN documentation](https://github.com/compgeo-mox/pygeon)
- [PorePy documentation](https://github.com/pmgbergen/porepy)
- [ParaView](https://www.paraview.org/)
- Standard texts on fault mechanics and Coulomb failure analysis

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*
