source $HOME/.bashrc
# 第一步：安装 protobuf
cd /tmp/
git clone -b v3.21.1 --depth=1 https://github.com/protocolbuffers/protobuf
cd protobuf
./autogen.sh
./configure
make
make install
protoc --version # 查看 protoc 版本，成功输出版本号，说明安装成功

# 第二步：安装 protoc-gen-go
go install github.com/golang/protobuf/protoc-gen-go@v1.5.2
