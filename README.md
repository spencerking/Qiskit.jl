# Qiskit.jl
**This is alpha quality, in-development software. If you need to reliably use Qiskit with the full range of features you should use the official Python version.**

Qiskit.jl is a Julia wrapper around IBM's Qiskit Python library.

## Dependencies
Julia: 
```
PyCall
PyPlot
```

Python:
```
Qiskit
```

## Installation
You can install Qiskit with pip3. The Julia dependencies will be handled by Pkg.

To verify your installation try running the following:
```julia
using Qiskit

Qiskit.init()
Qiskit.qiskit_version()
```
If you see version numbers for the Qiskit components, your installation is working.

## Roadmap

This project is still in its infancy and doesn't have a concrete roadmap yet. The plan is to work through the [IQX Tutorials](https://github.com/Qiskit/qiskit-iqx-tutorials) and [Community Tutorials](https://github.com/Qiskit/qiskit-community-tutorials) and implement the required functionality along the way. This should provide a solid foundation to work with moving forward.

## License

All wrapper code is licensed under the BSD 3-Clause License. All tutorials and examples are licensed under the Apache License 2.0 and are heavily based on the work from IBM and the Qiskit contributors.
