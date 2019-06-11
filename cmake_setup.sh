echo -e "\n setting upgrade version of cmake\n"

sudo apt-get -y upgrade gcc g++
sudo apt-get -y remove cmake
wget --no-check-certificate https://cmake.org/files/v3.11/cmake-3.11.0.tar.gz
tar -zxvf cmake-3.11.0.tar.gz
rm cmake-3.11.0.tar.gz
cd cmake-3.11.0/


echo -e "\n============\n Setting system Curl \n ==============\n"
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get -y install zlib1g-dev
./bootstrap --parallel=$(nproc) --system-curl

echo -e "\n\n make cmake \n"

make
sudo make install

cmake --version

rm -rf ./cmake-3.11.0/

echo -e "\n Finish cmake install! \n"

