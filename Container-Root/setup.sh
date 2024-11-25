#!/bin/sh

if [ -d /etc/apt ]; then
        [ -n "$http_proxy" ] && echo "Acquire::http::proxy \"${http_proxy}\";" > /etc/apt/apt.conf; \
        [ -n "$https_proxy" ] && echo "Acquire::https::proxy \"${https_proxy}\";" >> /etc/apt/apt.conf; \
        [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf
fi

sudo apt-get update
sudo apt-get upgrade -y

#sudo apt-get install -y python3-dev curl wget git g++ libgl1 libgl1-mesa-glx libglib2.0-0 vim
sudo apt-get install -y curl wget git g++ libgl1 libgl1-mesa-glx libglib2.0-0 vim

#curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
#python3 ./get-pip.py

git clone https://github.com/bes-dev/stable_diffusion.openvino.git
git clone https://github.com/mvinci12/awsome-inference-ray.git
pip install fastapi[standard]

cd stable_diffusion.openvino

pip install openvino-dev[onnx,pytorch]==2022.3.0
sed -i 's/numpy==1.19.5/numpy==1.21.2/g' ./requirements.txt
pip install -r requirements.txt

cd ..

sudo ln -s /home/ray/stable_diffusion.openvino /stable-diffusion

# Customize shell
export BASHRC=/home/ray/.bashrc
echo "alias ll='ls -alh --color=auto'" >> $BASHRC
echo "alias python=python3" >> $BASHRC
echo "alias sd='python /stable-diffusion/demo.py'" >> $BASHRC
echo "cat /banner.txt" >> $BASHRC
echo "cat /version.txt" >> $BASHRC
echo "cd /stable-diffusion" >> $BASHRC
echo "echo ''" >> $BASHRC
echo "echo 'sd - Stable Diffusion CLI'" >> $BASHRC
echo "echo ''" >> $BASHRC
echo "sd --help" >> $BASHRC
echo "echo ''" >> $BASHRC

