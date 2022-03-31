# Generate an LLVM file to analyze
clang -O0 -emit-llvm -S ./input.c -o input.ll
# Run the pass through opt - New PM
opt -S -load-pass-plugin ./build/libInjectFuncCall.so --passes="inject-func-call" input.ll -o instrumented.ll

llc -filetype=obj instrumented.ll -o instrumented.o

clang instrumented.o -o instrumented

./instrumented
