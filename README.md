# Pre-requisite
- 🐳Docker (any version): [Download here](https://www.docker.com/products/docker-desktop/)
- ⚙️Curvelet 2.1.3: [Download here](http://curvelet.org/)
- ⚙️FFTW 2.1.5: [Download here](https://www.fftw.org/download.html) 
- Tested on Windows

⚠️ You may need to alter the Dockerfile if you use different version than these

⚠️ Don't change the filename! Unless you understand which parts of the code that need to be adjusted
  - CurveLab filename: `CurveLab-2.1.3.tar.gz`
  - FFTW filename: `fftw-2.1.5.tar.gz`

⚠️ Soon be published on Docker hub

# How to install?
1) Run Docker on your machine
2) Clone the repo
3) Download the Curvelet and FFTW, put the `tar.gz` in the same folder
4) Rebuild the image

⚠️ make sure you're in the same folder!
~~~
docker build -t <Your Docker Username>/py-cs-cvt:1.0 .
~~~

OR if u are on Windows platform, can simply execute
~~~
build.bat
~~~
4) Check the tag name, look after the specified tag.
~~~
docker images
~~~

# How to run?

Execute this on your Windows cmd

~~~
docker run -it -p 8888:8888 <the container tag>
~~~~

Since the image was wrapped as Jupyter notebook, you can copy-paste the link to a browser.

# What's inside the py_cs_cvt?
- find the wrapped CS-CVT at the bottom of the Jupyter notebook
- For the example, just run the whole notebook at once

# Reference

~~~
I. G. E. Sulistyawan, D. Nishimae, T. Ishii and Y. Saijo, "Utilization of Curvelet Transform in Reconstructing Cellular Images for Undersampled Optical-resolution Photoacoustic Microscopy," in IEEE Transactions on Ultrasonics, Ferroelectrics, and Frequency Control, doi: 10.1109/TUFFC.2023.3272917.
~~~

# Additional tutorial
- (Docker tutorial) https://www.youtube.com/watch?v=gAkwW2tuIqE&t=525s
- (Curvelops Installation) https://pylops.github.io/curvelops/installation.html#requirements
- (ENV Preparation) https://stackoverflow.com/questions/44803982/how-do-i-run-a-bash-script-in-an-alpine-docker-container
- (ENV Preparation) https://stackoverflow.com/questions/67792050/dockerfile-bash-export-statement-not-working
