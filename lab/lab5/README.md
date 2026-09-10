# Laboratory 5: Richards Equation

This lab focuses on the numerical solution of the nonlinear Richards equation using [PyGeoN](https://github.com/compgeo-mox/pygeon) and [PorePy](https://github.com/pmgbergen/porepy). The exercises address the solution of unsaturated flow in porous media, using the van Genuchten model for water content and hydraulic conductivity.

---

## Files Overview

- **ex1.ipynb**  
  *Solves the Richards equation on the unit square using a mixed finite element method (RT0 for velocity, P0 for pressure). The van Genuchten model is used for the nonlinear water content and conductivity. The nonlinear system is solved using a Picard iteration with linearization of the storage term. The time integration is performed with the backward Euler scheme. Results are exported for visualization.*

- **ex2.ipynb**  
  *Solves the Richards equation on a rectangular domain using the L-scheme for nonlinear iteration. The van Genuchten model is used for water content and conductivity. The time integration is performed with the backward Euler scheme. The convergence properties of the L-scheme are studied for different scenarios. Results are exported for visualization.*

---

## Main Features

- **Richards equation**:  
  $$
  \begin{cases}
  K^{-1}(\psi) \mathbf{q} + \nabla \psi = -\nabla z \\
  \partial_t \theta(\psi) + \nabla \cdot \mathbf{q} = 0
  \end{cases}
  $$
  where $\theta(\psi)$ and $K(\psi)$ are given by the van Genuchten model.

- **Nonlinear solution strategies**:  
  - *Picard iteration* (ex1): Linearizes the storage term using the derivative of $\theta$.
  - *L-scheme* (ex2): Adds a stabilization term to ensure convergence for strongly nonlinear problems.

- **Time discretization**:  
  - Backward Euler scheme for robust time integration.

- **Boundary and initial conditions**:  
  - Dirichlet and Neumann conditions as specified in each scenario.
  - Initial pressure field set according to the exercise.

- **Visualization**:  
  - Pressure, velocity, water content, and saturation are exported at each time step for analysis in ParaView.

---

## Solved notebooks vs. assignments

From `ex2.ipynb` onward, every exercise has a companion `exN_text.ipynb`: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in yourself and run the cells -- an unfinished placeholder raises an immediate `NameError` pointing at the line you still need to complete, and the "Consistency check" cell at the end confirms your result once it is correct. `exN.ipynb` is the full worked solution, useful as a reference or to check your own work. `ex1.ipynb` has no `_text` version, since it is meant to be worked through together.

---

## How to Use

- Start with `ex1.ipynb` -- it introduces the lab's topic and is meant to be followed together.
- For each following exercise, open `exN_text.ipynb` and fill in the `__TODO__` placeholders yourself; use `exN.ipynb` as the reference solution to check your work or when stuck.
- Run the cells sequentially to reproduce the results and visualizations.
- Use ParaView to inspect the exported `.vtu` and `.pvd` files.

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
- van Genuchten, M. Th. (1980). "A closed-form equation for predicting the hydraulic conductivity of unsaturated soils." Soil Science Society of America Journal, 44(5), 892-898.
- [ParaView](https://www.paraview.org/)

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*