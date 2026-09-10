![Pytest](https://github.com/compgeo-mox/lab_numgeo/actions/workflows/check.yml/badge.svg)
[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

# NUMERICAL METHODS FOR THE GEOSCIENCES

## Course Overview

This course introduces mathematical and numerical modeling for simulating physical processes in the geosciences, with a focus on subsurface flow and deformation. It builds up numerical concepts step by step while linking them to the underlying mathematical models.

Link to the course: [link](https://www11.ceda.polimi.it/schedaincarico/schedaincarico/controller/scheda_pubblica/SchedaPublic.do?&evn_default=evento&c_classe=863565&lang=IT&__pj0=0&__pj1=fd788566d3622390ad34d698fed5e04e).

We will study flow, transport, and poroelastic deformation in porous media, alongside numerical methods such as:

- mixed formulations  
- discretization on general grids  
- hybrid-dimensional PDEs  
- conservation laws  
- advection–diffusion–reaction problems  
- techniques for nonlinear and coupled systems  

The course is hands-on and computational, with a strong emphasis on the implementation and analysis of numerical methods for PDEs relevant to geosciences. Each laboratory is designed to reinforce theoretical concepts through practical coding exercises and real-world applications.

---

## Laboratory Structure and Content

The laboratory component is organized into a series of Jupyter notebooks, each focusing on a specific mathematical model or numerical technique. The labs are designed to be self-contained and build progressively in complexity, covering:

- **Finite element and finite volume discretizations**
- **Mixed and hybrid methods for flow and mechanics**
- **Coupled problems (e.g., poroelasticity, Biot equations)**
- **Iterative solvers and splitting methods for coupled systems**
- **Post-processing and visualization with ParaView**

### Example Laboratory Topics

- **Lab 8:** Elasticity equation (standard and mixed formulations, MPSA method)
- **Lab 9:** Biot equations for poroelasticity (static and time-dependent, footing and injection problems)
- **Lab 10:** Iterative splitting solvers for Biot (fixed-strain and fixed-stress methods)

Each lab includes:

- A mathematical introduction and problem statement
- Step-by-step code for grid generation, discretization, and solution
- Implementation of boundary and initial conditions
- Assembly and solution of linear systems
- Post-processing: computation of derived quantities (e.g., stress, flux) and export for visualization
- Consistency checks and validation

### Solved notebooks vs. assignments

Inside each lab folder, every exercise `exN.ipynb` (for `N >= 2`) has a companion `exN_text.ipynb`. These two notebooks cover the same problem but serve different purposes:

- **`exN.ipynb`** is the complete, worked solution — read it as a reference, or to check your own implementation once you are done.
- **`exN_text.ipynb`** is your assignment: the same notebook with the key steps replaced by `__TODO__` placeholders. Fill them in and run the cells; an unfinished placeholder raises an immediate `NameError` pointing at exactly the line you still need to complete, and a "Consistency check" cell at the end confirms your result against a reference value once your implementation is correct.

`ex1` in each lab has no `_text` version — it is meant to be worked through together in class rather than solved independently.

---

## Getting Started

### Installation for Linux

The package requires Python >= 3.13

Many functionalities depend on [PorePy](https://github.com/pmgbergen/porepy) and [PyGeoN](https://github.com/compgeo-mox/pygeon), so these packages will be installed.
To install all the dependencies:
```bash
pip install -e .
```

### Running the Laboratories

1. Clone the repository and install dependencies as above.
2. Open the desired lab folder (e.g., `lab8/`) in Jupyter.
3. Read through `ex1.ipynb` first — it introduces the lab's topic and is meant to be followed together.
4. For each following exercise, open `exN_text.ipynb` and complete the `__TODO__` placeholders yourself; use `exN.ipynb` as the reference solution to check your work or when stuck.
5. Use ParaView or similar tools to visualize exported `.vtu` files.

---

## Learning Outcomes

By the end of the course and laboratory sessions, students will:

- Understand the mathematical formulation of key PDEs in geosciences.
- Be able to discretize and solve these equations using modern numerical methods.
- Gain practical experience with Python-based scientific computing tools.
- Analyze and interpret simulation results, including stress, displacement, pressure, and flux fields.
- Develop skills in debugging, validation, and scientific visualization.

---

## Issues
Create an [issue](https://github.com/compgeo-mox/lab_numgeo/issues).

## License
See [license](./LICENSE.md).

---

## References and Further Reading

- [PyGeoN documentation](https://github.com/compgeo-mox/pygeon)
- [PorePy documentation](https://github.com/pmgbergen/porepy)
- [ParaView](https://www.paraview.org/)
- Standard texts on numerical methods for PDEs and geosciences

---

*For questions or issues, please contact the course instructor or consult the documentation linked above.*