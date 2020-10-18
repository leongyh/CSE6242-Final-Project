# CSE6242-Fa2020-Team108

**Authors**

- Yew Hung Leong

# Getting Started - Docker
From the `docker/` directory, build the image:

Build the image:

```bash
docker build --tag dva:latest . 
```

In order to run Twarc to pull Twitter data, create your `.env` file in the `docker/` directory. Fill them out with your Twitter API keys. The file structure is as such:

```
CONSUMER_KEY=
CONSUMER_SECRET=
ACCESS_TOKEN=
ACCESS_TOKEN_SECRET=
```

Return to the repository's root directory and start the container:

**On Linux/MacOS**
```bash
docker run -it --name dva --privileged=true --env-file docker/.env -v $PWD/src:/mnt/host/src -p 8888:8888 dva:latest
```

**On Windows**
```bash
docker run -it --name dva --privileged=true --env-file docker/.env -v %cd%/src:/mnt/host/src -p 8888:8888 dva:latest
```

While exec'd into the container, start jupyter notebook and other services:

```bash
bash /start.sh
```

# Accessing Jupyter Notebook

To access jupyter notebook from the host, go to `localhost:8888` on the browser.
