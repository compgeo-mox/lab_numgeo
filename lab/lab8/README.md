# Laboratory 8: Elasticity Equation

This lab focuses on the numerical solution of the elasticity equation using [PyGeoN](https://github.com/compgeo-mox/pygeon) and [PorePy](https://github.com/pmgbergen/porepy). The exercises cover both standard and mixed formulations, as well as the use of the MPSA method for elasticity. The main unknown is the displacement field $u$, and in the mixed case, also the stress $\sigma$ and rotation $r$.

---

## Files Overview

- **ex1.ipynb**  
  *Rigid-body motion test for the elasticity equation on the unit square. The displacement is imposed as a rotation on the boundary. The solution and stress tensor are computed and exported for visualization.*

- **ex2.ipynb**  
  *Footing problem: vertical compression of a square domain with fixed bottom and a compressive force on the top. The displacement and stress tensor are computed and exported.*

- **ex3.ipynb**  
  *Footing problem with focus on locking effects: investigates the effect of Poisson ratio approaching incompressibility. The displacement is computed and exported.*

- **ex4.ipynb**  
  *Footing problem solved with the Multi-Point Stress Approximation (MPSA) method using PorePy. The stress tensor is post-processed and exported.*

- **ex5.ipynb**  
  *Footing problem solved in mixed form: the unknowns are stress, displacement, and rotation. The mixed finite element method is used, and the solution is exported.*

- **ex6.ipynb**  
  *Cantilever beam problem: the beam is fixed on one side and subject to a body force. The displacement and stress tensor are computed and exported.*

- **ex7.ipynb**  
  *Cantilever beam problem with tensile force: the beam is fixed on one side and a tensile force is applied on the opposite side. The displacement and stress tensor are computed and exported.*

---

## Main Features

- **Elasticity equation**:  
  $$
  \nabla \cdot [2\mu \epsilon(u) + \lambda \nabla \cdot u\, I] = -b
  $$
  where $\epsilon(u)$ is the symmetric gradient, $\lambda$ and $\mu$ are Lamé parameters, and $b$ is a body force.

- **Boundary conditions**:  
  - Dirichlet (displacement) and Neumann (traction) conditions on various boundaries.
  - Rigid-body motion, footing, and cantilever beam scenarios.

- **Numerical methods**:  
  - Standard finite element method (VecLagrange1).
  - Mixed finite element method (VecBDM1, VecPwConstants, PwConstants).
  - MPSA (Multi-Point Stress Approximation) for general grids.

- **Post-processing**:  
  - Computation and export of stress tensor components.
  - Export of displacement fields for visualization in ParaView.

---

## Solved notebooks vs. assignments

From `ex2.ipynb` onward, every exercise has a companion `exN_text.ipynb`: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in yourself and run the cells -- an unfinished placeholder raises an immediate `NameError` pointing at the line you still need to complete, and the "Consistency check" cell at the end confirms your result once it is correct. `exN.ipynb` is the full worked solution, useful as a reference or to check your own work. `ex1.ipynb` has no `_text` version, since it is meant to be worked through together.

---

## How to Use

- Start with `ex1.ipynb` -- it introduces the lab's topic and is meant to be followed together.
- For each following exercise, open `exN_text.ipynb` and fill in the `__TODO__` placeholders yourself; use `exN.ipynb` as the reference solution to check your work or when stuck.
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
- Standard texts on continuum mechanics and finite element methods

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*