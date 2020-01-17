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

include("Terra.jl")

function execute(circuit, backend)
    qiskit.execute(circuit, backend)
end

function execute(circuit, backend, shots)
    qiskit.execute(circuit, backend, shots=1024)
end

include("BasicAer.jl")

include("Aer.jl")

include("Visualization.jl")

include("Version.jl")

end # module
