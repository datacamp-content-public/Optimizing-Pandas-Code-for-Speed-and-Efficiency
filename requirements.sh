# If bash command fails, build should error out
set -e

# Install specific package versions with pip
# Check the latest version using https://pypi.org/search

pip3 install pandas==0.23.4
pip3 install matplotlib==2.2.2
pip3 install numpy==1.15.1 
