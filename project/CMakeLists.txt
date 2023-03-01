cmake_minimum_required(VERSION 3.10)
project("ExampleProject")
set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR})
add_subdirectory(src)

# Enable Clang to be used to produce the LLVM bytecode.
set(CMAKE_C_COMPILER_EXTERNAL_TOOLCHAIN ${LLVM_PATH}/clang)
add_compile_options(-O2 -emit-llvm --target=gameboy)
# set()
# set(CMAKE_C_COMPILER clang)

# Generate the IR file
# Flags = -O2 -emit-llvm -c {file} -o {file.bc} --target=gameboy

# Disassemble the IR file
# ./../llvm-project/build/bin/llvm-dis ./$1/$1.bc
execute_process(
    COMMAND ${LLVM_PATH}/llvm-dis "ExampleProjectFile"
    OUTPUT_FILE bitcodeFile
)
# Produce the assembly file using llc
# ./../llvm-project/build/bin/llc -march="$2" -O2 -filetype=asm ./$1/$1.bc -o ./$1/$1.asm $3
execute_process(
    COMMAND ${LLVM_PATH}/llc "-march=\"Game Boy\" -O2 -filetype=asm ExampleProjectFile"
    OUTPUT_FILE asmFile
)
# Produce the executable file using RGBDS
file(WRITE "myasmfile" ${asmFile})
# Things to pass to cmake include:
