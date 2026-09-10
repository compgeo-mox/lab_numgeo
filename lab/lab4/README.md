# Laboratory 4: Flow and Transport Problems

This lab investigates the coupling of flow and transport in porous media using [PorePy](https://github.com/pmgbergen/porepy) and [PyGeoN](https://github.com/compgeo-mox/pygeon). The focus is on time-dependent transport, advection, diffusion, and reaction, with the advective field computed from a Darcy flow model.

---

## Files Overview

- **ex1.ipynb**  
  *Solves the linear transport problem with a prescribed constant velocity field on the unit square. Both implicit and explicit Euler time discretizations are implemented. The solution is exported at each time step for visualization.*

- **ex2.ipynb**  
  *Solves a coupled Darcy flow and transport problem with a piecewise-constant permeability field. The Darcy problem is solved first (MPFA), then the computed flux is used in the transport equation. The transport is solved with implicit Euler, and results are exported for visualization.*

- **ex3.ipynb**  
  *Extends the transport problem to include diffusion. The Darcy problem is solved as before, and the transport equation includes both advection and diffusion terms. The effect of varying the diffusion coefficient is explored.*

- **ex4.ipynb**  
  *Adds a reaction term to the transport equation. The Darcy flow is solved, then the transport-reaction equation is advanced in time for different reaction rates. The influence of the reaction parameter is studied.*

- **ex5.ipynb**  
  *Solves a flow and transport problem on a realistic heterogeneous permeability field from the SPE10 benchmark. The Darcy problem is solved (MPFA), and the resulting flux is used in the transport equation. The evolution of concentration is tracked and exported for visualization.*

---

## Main Exercise: ex1.ipynb

### Problem Statement

Let $\Omega = [0,1]^2$ and $T > 0$.  
Given a constant velocity field $q = [1, 0]^T$, solve for $c$:

$$
\partial_t c + \nabla \cdot (q c) = 0 \quad \text{in } \Omega \times (0, T)
$$

with boundary and initial conditions:

$$
c = 1 \quad \text{on } \partial_{left} \Omega \times (0, T) \\
c(x, 0) = 0 \quad \text{in } \Omega
$$

Both implicit and explicit Euler schemes are implemented for time integration.

---

## Solved notebooks vs. assignments

From `ex2.ipynb` onward, every exercise has a companion `exN_text.ipynb`: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in yourself and run the cells -- an unfinished placeholder raises an immediate `NameError` pointing at the line you still need to complete, and the "Consistency check" cell at the end confirms your result once it is correct. `exN.ipynb` is the full worked solution, useful as a reference or to check your own work. `ex1.ipynb` has no `_text` version, since it is meant to be worked through together.

---

## How to Use

- Start with `ex1.ipynb` -- it introduces the lab's topic and is meant to be followed together.
- For each following exercise, open `exN_text.ipynb` and fill in the `__TODO__` placeholders yourself; use `exN.ipynb` as the reference solution to check your work or when stuck.

---

## General Workflow

1. **Grid creation**  
   - Cartesian or simplex grid on the unit square.

2. **Darcy flow problem**  
   - For ex2–ex5: Solve the Darcy problem to obtain the advective velocity field $q$.
   - Use MPFA for heterogeneous or realistic permeability fields.

3. **Transport problem**  
   - Set up the transport equation using the computed $q$.
   - Optionally include diffusion and/or reaction terms.
   - Apply appropriate boundary and initial conditions.

4. **Time discretization**  
   - Use implicit or explicit Euler schemes.
   - Export the solution at each time step for visualization.

5. **Visualization**  
   - Use ParaView to analyze the exported `.vtu` and `.pvd` files.

---

## Requirements

- Python 3.x
- Jupyter Notebook
- numpy, scipy
- porepy
- pygeon (for ex2, ex5)

---

## References

- [PorePy documentation](https://github.com/pmgbergen/porepy)
- [PyGeoN documentation](https://github.com/compgeo-mox/pygeon)
- [SPE10 Benchmark](http://dx.doi.org/10.2118/66599-MS)
- [ParaView](https://www.paraview.org/)

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*