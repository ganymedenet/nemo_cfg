# install pyenv to install python on persistent home directory
curl https://pyenv.run | bash

# add to path
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# updating bashrc
source ~/.bashrc

# install python 3.10.7 and make default
pyenv install 3.10.7
pyenv global 3.10.7

# execute
python
