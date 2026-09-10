# Laboratory 7: Reactive Transport

This lab explores the numerical solution of reactive transport problems, focusing on chemical kinetics, equilibrium reactions, and coupled transport-reaction systems. The exercises use Python and standard scientific libraries (NumPy, SciPy, Matplotlib, PorePy).

---

## Files Overview

- **ex1.ipynb**  
  *Solves a system of chemical kinetics ODEs for four species ($A$, $B$, $C$, $D$) with three reactions (two reversible, one irreversible). The system is advanced in time using the explicit Euler method, and the evolution of all species is plotted.*

- **ex2.ipynb**  
  *Extends the previous chemical system by treating the first two reactions as being at equilibrium, reducing the ODE system to three total concentrations. At each time step, the actual species concentrations are recovered by solving a nonlinear algebraic system (using Newton's method). The explicit Euler method is used for time integration, and results are visualized.*

- **ex3.ipynb**  
  *Solves a coupled flow and reactive transport problem in a 2D domain. First, a Darcy flow problem is solved to obtain the advective velocity field. Then, a transport-reaction system is solved for a mobile species $c$ and an immobile species $w$, including precipitation/dissolution reactions. The system is advanced in time using operator splitting, and results are exported for visualization.*

---

## Main Features

- **Chemical kinetics and equilibrium**:  
  - ODE systems for multiple species and reactions.
  - Treatment of fast equilibrium reactions via algebraic constraints and Newton's method.

- **Reactive transport**:  
  - Coupling of advection and reaction in porous media.
  - Operator splitting for time integration of transport and nonlinear reactions.
  - Precipitation/dissolution modeled via nonlinear source terms.

- **Numerical methods**:  
  - Explicit Euler for time integration.
  - Newton's method for nonlinear algebraic systems.
  - Use of PorePy for grid generation, Darcy flow, and transport discretization.

- **Visualization**:  
  - Time evolution plots for species and total concentrations.
  - Export of spatially distributed results for ParaView.

---

## Solved notebooks vs. assignments

From `ex2.ipynb` onward, every exercise has a companion `exN_text.ipynb`: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in yourself and run the cells -- an unfinished placeholder raises an immediate `NameError` pointing at the line you still need to complete, and the "Consistency check" cell at the end confirms your result once it is correct. `exN.ipynb` is the full worked solution, useful as a reference or to check your own work. `ex1.ipynb` has no `_text` version, since it is meant to be worked through together.

---

## How to Use

- Start with `ex1.ipynb` -- it introduces the lab's topic and is meant to be followed together.
- For each following exercise, open `exN_text.ipynb` and fill in the `__TODO__` placeholders yourself; use `exN.ipynb` as the reference solution to check your work or when stuck.
- Run the cells sequentially to reproduce the results and visualizations.
- Use ParaView to inspect the exported `.vtu` files from ex3.

---

## Requirements

- Python 3.x
- Jupyter Notebook
- numpy, scipy, matplotlib
- porepy

---

## References

- [PorePy documentation](https://github.com/pmgbergen/porepy)
- [ParaView](https://www.paraview.org/)
- Standard texts on chemical kinetics and reactive transport

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*