# Clean-up and move files to folder.
rm -rf ./$1
mkdir $1

# Build the LLVM IR file.
./../llvm-project/build/bin/clang -O2 -emit-llvm -c $1.c -o ./$1/$1.bc --target=gameboy

# Disassemble the IR file.
./../llvm-project/build/bin/llvm-dis ./$1/$1.bc

# Produce the assembly file.
./../llvm-project/build/bin/llc -march="$2" -O2 -filetype=asm ./$1/$1.bc -o ./$1/$1.asm $3
# ./../llvm-project/build/bin/llc -march="$2" -O2 -filetype=asm ./$1/$1.bc -o ./$1/$1.s -print-after-all
# if ($2)
# then
# else
#     ./../llvm-project/build/bin/llc -march="Game Boy" -O2 -filetype=asm ./$1/$1.bc -o ./$1/$1.s
# fi

# Produce the executable file.
rgbasm ./$1/$1.asm -o $1/$1.o
rgblink -o ./test/test.gb ./test/test.o
rgbfix -v -p 0xFF ./test/test.gb
# ./../llvm-project/build/bin/llc -mtriple="gameboy-none-none" -O2 -filetype=obj ./$1/$1.bc -o ./$1/$1.o