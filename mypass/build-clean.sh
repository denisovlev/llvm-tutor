rm -rf ./build
mkdir "build"
cd build || exit
cmake -G Ninja ..
cmake --build .