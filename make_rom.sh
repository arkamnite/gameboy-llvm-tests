rgbasm ./$1/$1.asm -o $1/$1.o
rgblink -o ./test/test.gb ./test/test.o
rgbfix -v -p 0xFF ./test/test.gb