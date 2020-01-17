# Aer

function get_basic_backends()
    qiskit.BasicAer.backends()
end

function get_basic_backend(b)
    qiskit.BasicAer.get_backend(b)
end
