mkdir $HOME/workspace
cd /tmp

tar -xvzf git-2.36.1.tar.gz
cd git-2.36.1/
./configure --prefix=/usr/local/git/
make
make install

tee -a $HOME/.bashrc <<'EOF'
# Configure for git
export PATH=/usr/local/git/bin/:$PATH
EOF
source $HOME/.bashrc
git --version          # 输出 git 版本号，说明安装成功



git config --global user.name "zhuwen"    # 用户名改成自己的
git config --global user.email "narcissuscry@gmail.com"    # 邮箱改成自己的
git config --global credential.helper store    # 设置 Git，保存用户名和密码
git config --global core.longpaths true # 解决 Git 中 'Filename too long' 的错误
git config --global core.quotepath off
#git lfs install --skip-repo
