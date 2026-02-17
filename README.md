# SimpleRTL: Publication-Quality RTL Diagrams in TikZ

At the time of this package's creation, no easy-to-use TikZ package existed for generating high-quality, publication-ready RTL diagrams. While RTL diagrams can certainly be drawn using standard TikZ or circuitikz elements, anyone who has attempted this can confirm that it is a tedious and highly inconvenient process.

During the preparation of a publication, I needed to draw an extensive RTL diagram of a complete DSP architecture. This necessity led to the creation of SimpleRTL.

This package is intended primarily for FPGA engineers (I feel your pain!), ASIC designers, researchers, students, and basically anyone dealing with digital hardware visualization. SimpleRTL is intended to be a community-driven, continuously evolving tool dedicated to raising the standard of digital design visualization.

---

## Features

* **Publication-Ready Aesthetics:** Designed to mimic the clean, authoritative look of classic VLSI / digital design / computer architecture text books. It features subtle grouping colors, drop shadows for multi-instance blocks, and crisp orthogonal routing, while minimizing the amount of code needed.
* **Parametric Components:** Multiplexers can be inferred automatically; the geometry is handled by the package.
* **Smart Bus Routing:** The Anchor points of the elements are preserved for easier signal / bus routing. Buses can also be created automatically.
* **Hardware Semantics:** Includes standard representations for D-Flip-Flops (with clock/enable pins), Tri-State Buffers, ALUs, Shift Registers, and Register Files to name a few.

---

## Battle-Tested

SimpleRTL has been successfully battle-tested in rigorous, multi-round peer-review environments (e.g., IEEE Transactions). It is specifically optimized to:

* Unambiguously demonstrate the separation of data path and control logic.
* Satisfy even the most highly specific demands for hardware critical path visualization.
* Overwhelm any doubts regarding your architectural competence.

> **Disclaimer:** While SimpleRTL guarantees pristine hardware diagrams, it unfortunately cannot protect you from reviewers nitpicking your textual formulations.

---
