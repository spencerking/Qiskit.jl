module Qiskit

using PyCall

const qiskit = PyNULL()

function init()
    try
	copy!(qiskit, pyimport("qiskit"))
    catch err
        error("The Python Qiskit package could not be imported. You must install Python Qiskit before using this package. The error was $err")
    end
end

function QuantumCircuit(x)
    qiskit.QuantumCircuit(x)
end

function QuantumCircuit(x, y)
    qiskit.QuantumCircuit(x, y)
end

function execute(circuit, backend)
    qiskit.execute(circuit, backend)
end

function execute(circuit, backend, shots)
    qiskit.execute(circuit, backend, shots=1024)
end

# Aer
function get_backend(b)
    qiskit.Aer.get_backend(b)
end

#module Aer
#    function get_backend(b)
#	qiskit.aer.get_backend(b)
#    end
#end

# Visualization
function plot_state_city(state)
    qiskit.visualization.plot_state_city(state)
end

function plot_histogram(data)
    qiskit.visualization.plot_histogram(data)
end


# Version
version() = qiskit.__version__
qiskit_version() = qiskit.__qiskit_version__

end # module
