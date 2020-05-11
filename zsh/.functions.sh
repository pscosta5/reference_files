# Convenience functions

add_kernel () {
    # Add the active environment as a Jupyter kernel
    # Assumes python and ipykernel is installed
    # Args: kernel_name
    if [ "$#" -ne 1 ]; then
        echo "Illegal number of parameters"
        echo "Expected 1 parameter -- the kernel name"
        return 1
    fi
    KERNEL_NAME=$1
    python -m ipykernel install --user --name="${KERNEL_NAME}"
    if [ "$?" -eq "0" ]; then
        echo "Kernel ${KERNEL_NAME} created"
        return 0
    else
        echo "Kernel creation failed"
        return 1
    fi
}

del_kernel () {
    # Remove a kernel from Jupyter
    # Assumes python and jupyterlab is installed
    # Args: kernel_name
    if [ "$#" -ne 1 ]; then
        echo "Illegal number of parameters"
        echo "Expected 1 parameter -- the kernel name"
        return 1
    fi
    KERNEL_NAME=$1
    jupyter kernelspec uninstall "${KERNEL_NAME}"
    if [ "$?" -eq "0" ]; then
        echo "Kernel ${KERNEL_NAME} removed"
        return 0
    else
        echo "Kernel removal failed"
        return 1
    fi
}

make_venv () {
    # Make a new Python venv
    # Assumes Python is installed
    # Args:
    #    prompt name (optional)
    #    directory name (optional)
    if [ "$#" -gt 2 ]; then
        echo "Too many paremeters"
        echo "Expected 2 parameters -- the prompt name and directory name"
        return 1
    elif [ "$#" -eq 2 ]; then
        PROMPT_NAME=$1
        DIRECTORY=$2
        python -m venv --prompt "${PROMPT_NAME}" "${DIRECTORY}"
    elif [ "$#" -eq 1 ]; then
        PROMPT=$1
        python -m venv --prompt "S{PROMPT_NAME}" .venv
    else
        python -m venv .venv
    fi
    if [ "$?" -eq "0" ]; then
        echo "venv created"
        return 0
    else
        echo "venv creation failed"
        return 1
    fi
}
