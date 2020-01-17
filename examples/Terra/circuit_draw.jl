# (C) Copyright IBM 2017, 2018.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.
#
# Modifications copyright Spencer King, 2020

using Qiskit

function build_bell_circuit()
    # Returns a circuit putting 2 qubits in the Bell state.
    qc = Qiskit.QuantumCircuit(2, 2)
    qc.h(0)
    qc.cx(0, 1)
    qc.measure([0, 1], [0, 1])
    return qc
end

# Initialize Qiskit
Qiskit.init()

# Create the circuit
bell_circuit = build_bell_circuit()

# Use the internal .draw() to print the circuit
print(bell_circuit)
