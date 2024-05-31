FROM ubuntu:20.04


# Install GCC
RUN apt-get update \
&& apt-get install -y gcc \
&& apt-get install -y g++ \
&& apt-get install -y make \
&& apt-get install -y build-essential libssl-dev libffi-dev python3-dev python3-pip \
&& DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends python3-opencv \
&& apt-get install -y git \
&& apt-get install -y wget

WORKDIR /installation
COPY * .

# Install FFTW
RUN sed -i -e 's/\r$//' install_fftw.sh
RUN ./install_fftw.sh

# Install CurveLab
RUN sed -i -e 's/\r$//' install_curvelet.sh
RUN ./install_curvelet.sh

# Install Curvelops
RUN sed -i -e 's/\r$//' install_curvelops.sh
RUN ./install_curvelops.sh

# Install Jupyter notebook
RUN pip3 install seaborn
RUN pip3 install scikit-learn
RUN pip3 install jupyter
RUN pip3 install matplotlib

# Install DL module
RUN pip3 install numpy
RUN pip3 install networkx==2.8.8
RUN pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
RUN pip3 install Pillow
RUN pip3 install scipy
RUN pip3 install opencv-contrib-python

# Move to app directory
WORKDIR /app
COPY *.ipynb .
COPY *.tif .
CMD ["jupyter","notebook","--allow-root","--ip","0.0.0.0","--port","8888"]