# Laboratory 2: Darcy Equation with PyGeoN

This lab focuses on the numerical solution of the Darcy equation using [PyGeoN](https://github.com/compgeo-mox/pygeon) and [PorePy](https://github.com/pmgbergen/porepy). The main focus is on the sequence of exercises (`ex1.ipynb` to `ex5.ipynb`), each addressing a different scenario for Darcy flow in 2D or 3D.

---

## Files Overview

- **ex1.ipynb**:  
  *Solves the basic Darcy problem on the unit square with constant permeability and a uniform source term, using homogeneous Dirichlet boundary conditions for the pressure.*

- **ex2.ipynb**:  
  *Introduces a vector source term (e.g., buoyancy), with mixed boundary conditions.*

- **ex3.ipynb**:  
  *Considers heterogeneous permeability and computes the effective permeability, comparing numerical and analytical results.*

- **ex4.ipynb**:  
  *Models two wells (sources/sinks) in the domain, requiring a constraint to ensure uniqueness of the pressure solution.*

- **ex5.ipynb**:  
  *Extends the problem to 3D with a more complex, piecewise-constant permeability tensor and mixed boundary conditions.*

---

## Main Exercise: ex1.ipynb

### Problem Statement

Let $\Omega = (0,1)^2$ with boundary $\partial \Omega$ and outward unit normal $\nu$.  
Given $k = I$ (identity matrix, i.e., isotropic permeability) and $f = 1$ (constant source), solve for $(q, p)$:

$$
\left\{
\begin{array}{ll}
\begin{array}{l} 
q + \nabla p = 0 \\
\nabla \cdot q = f
\end{array}
& \text{in } \Omega
\end{array}
\right.
$$

with boundary condition:

$$
p = 0 \quad \text{on } \partial \Omega
$$

### Step-by-step Solution

1. **Import modules**  
   Use `numpy`, `scipy.sparse`, `porepy`, and `pygeon`.

2. **Grid creation**  
   Use a triangular (simplicial) mesh for compatibility with the Raviart-Thomas (RT0) discretization.

3. **Problem setup**  
   - Define permeability tensor ($k=I$).
   - Define the constant source term ($f=1$).
   - Set up RT0 and piecewise constant (P0) spaces.

4. **Matrix assembly**  
   - Assemble the mass and divergence matrices.
   - Build the saddle-point system for the mixed formulation.

5. **Solve the linear system**  
   - Use PyGeoN's `LinearSystem` class.
   - Extract velocity ($q$) and pressure ($p$).

6. **Post-processing**  
   - Project $q$ to cell centers for visualization.
   - Export results to VTK for visualization in ParaView.

7. **Consistency check**  
   - Assert the norms of the computed pressure and velocity fields.

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
- numpy, scipy
- porepy
- pygeon

---

## References

- [PyGeoN documentation](https://github.com/compgeo-mox/pygeon)
- [PorePy documentation](https://github.com/pmgbergen/porepy)
- [ParaView](https://www.paraview.org/)

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*