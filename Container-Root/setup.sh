#!/bin/sh

if [ -d /etc/apt ]; then
        [ -n "$http_proxy" ] && echo "Acquire::http::proxy \"${http_proxy}\";" > /etc/apt/apt.conf; \
        [ -n "$https_proxy" ] && echo "Acquire::https::proxy \"${https_proxy}\";" >> /etc/apt/apt.conf; \
        [ -f /etc/apt/apt.conf ] && cat /etc/apt/apt.conf
fi

apt-get update
apt-get upgrade -y

apt-get install -y python3-dev curl wget git g++ libgl1 libgl1-mesa-glx libglib2.0-0 vim

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 ./get-pip.py

git clone https://github.com/bes-dev/stable_diffusion.openvino.git

cd stable_diffusion.openvino

pip install openvino-dev[onnx,pytorch]==2022.3.0
sed -i 's/numpy==1.19.5/numpy==1.21.2/g' ./requirements.txt
pip install -r requirements.txt

cd ..

ln -s /stable_diffusion.openvino /stable-diffusion

# Customize shell
echo "alias ll='ls -alh --color=auto'" >> /root/.bashrc
echo "alias python=python3" >> /root/.bashrc
echo "alias sd='python demo.py'" >> /root/.bashrc
echo "cat /banner.txt" >> /root/.bashrc
echo "cat /version.txt" >> /root/.bashrc
echo "cd /stable-diffusion" >> /root/.bashrc
echo "echo ''" >> /root/.bashrc
echo "echo 'sd - Stable Diffusion CLI'" >> /root/.bashrc
echo "echo ''" >> /root/.bashrc
echo "sd --help" >> /root/.bashrc
echo "echo ''" >> /root/.bashrc

