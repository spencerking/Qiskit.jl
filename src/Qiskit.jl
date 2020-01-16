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

version() = qiskit.__version__

qiskit_version() = qiskit.__qiskit_version__

end # module
