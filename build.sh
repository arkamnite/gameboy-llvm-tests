# Clean-up and move files to folder.
rm -rf ./$1
mkdir $1

# Build the LLVM IR file.
./../llvm-project/build/bin/clang -O2 -emit-llvm -c $1.c -o ./$1/$1.bc

# Disassemble the IR file.
./../llvm-project/build/bin/llvm-dis ./$1/$1.bc

# Produce the assembly file.
./../llvm-project/build/bin/llc -march=GameBoy -O2 -filetype=asm ./$1/$1.bc -o ./$1/$1.s