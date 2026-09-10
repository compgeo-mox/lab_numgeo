# Laboratory 9: Biot Equation (Poroelasticity)

This lab addresses the numerical solution of the (static and quasi-static) Biot equations for poroelasticity using [PyGeoN](https://github.com/compgeo-mox/pygeon) and [PorePy](https://github.com/pmgbergen/porepy). The unknowns are the displacement $u$, Darcy flux $q$, and pore pressure $p$. The exercises cover both single-step and time-dependent problems, including classical benchmarks such as the footing and injection/production problems.

---

## Files Overview

- **ex1.ipynb**  
  *Static Biot equation for a footing problem on a rectangular domain. The force is applied on a central portion of the top boundary. The coupled system for displacement, flux, and pressure is assembled and solved in a single time step. The solution (displacement, flux, pressure, and stress tensor) is exported for visualization.*

- **ex2.ipynb**  
  *Quasi-static Biot equation for a footing problem, solved over multiple time steps. The force is applied on a central portion of the top boundary. The time-stepping loop updates the coupled system and exports the solution at each step.*

- **ex3.ipynb**  
  *Quasi-static Biot equation for an injection/production problem on the unit square. A source term is imposed in a small region of the domain. The time-stepping loop updates the coupled system and exports the solution at each step.*

---

## Main Features

- **Biot equations**:  
  $$
  \begin{aligned}
    &\nabla \cdot [2\mu \epsilon(u) + \lambda \nabla \cdot u\, I - \alpha p I] = -b \\\\
    &\mu q + K \nabla p = 0 \\\\
    &\partial_t (s_0 p + \alpha \nabla \cdot u) + \nabla \cdot q = \psi
  \end{aligned}
  $$
  where $\epsilon(u)$ is the symmetric gradient, $\lambda$ and $\mu$ are Lamé parameters, $K$ is permeability, $s_0$ is storativity, $\alpha$ is the Biot-Willis coefficient, $b$ is body force, and $\psi$ is a source term.

- **Boundary conditions**:  
  - Dirichlet (displacement and/or pressure) and Neumann (traction and/or flux) conditions on various boundaries.
  - Footing and injection/production scenarios.

- **Numerical methods**:  
  - Mixed finite element discretization: VecLagrange1 for displacement, RT0 for flux, PwConstants for pressure.
  - Block-structured linear systems for coupled problems.
  - Time-stepping for quasi-static cases.

- **Post-processing**:  
  - Computation and export of stress tensor components, displacement, flux, and pressure.
  - Export of results for visualization in ParaView.

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
- Standard texts on poroelasticity and finite element methods

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*