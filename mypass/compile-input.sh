# Generate an LLVM test file
"$LLVM_DIR"/bin/clang -O1 -S -emit-llvm ./input.c -o input.ll