

rm docker.sh

rm lin.exe
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/linux/lin.exe
chmod +x lin.exe

wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/linux/w.exe
chmod +x lin.exe
chmod +x w.exe#

rm cpp_linux.exe
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/linux/cpp_linux.exe
chmod +x cpp_linux.exe
file cpp_linux.exe



rm cpp_linux
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/linux/cpp_linux
chmod +x cpp_linux
file cpp_linux

rm Dockerfile
wget https://raw.githubusercontent.com/ganymedenet/nemo_cfg/master/qai/linux/Dockerfile
chmod +x Dockerfile
file cpp_linux

cp cpp_linux cmake_build_debug

chmod +x ./cmake_build_debug/cpp_linux

sudo cp cpp_linux cmake-build-debug/


cd cmake-build-debug
ls

docker build . -t lin
