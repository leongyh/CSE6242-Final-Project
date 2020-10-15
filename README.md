# CSE6242-Fa2020-Team108

**Authors**

- Yew Hung Leong

# Getting Started
Build the image:

```bash
docker build --tag dva:latest . 
```

Start the container:

```bash
docker run -it --name dva --privileged=true -v $PWD/src:/mnt/host/src -p 8888:8888 dva:latest
```

While in the container, start jupyter notebook and other services:

```bash
bash /start.sh
```

# Accessing Jupyter Notebook

To access jupyter notebook from the host, go to `0.0.0.0:8080` on the browser.
