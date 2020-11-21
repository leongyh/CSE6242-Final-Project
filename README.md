# CSE6242-Fa2020-Team108

**Authors**

- Yew Hung Leong, Eugene Itskovich

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
docker run -it --name dva --privileged=true --env-file docker/.env -v $PWD/src:/home/jovyan/work/src -p 8888:8888 dva:latest /bin/sh
```

**On Windows**
```bash
docker run -it --name dva --privileged=true --env-file docker/.env -v %cd%/src:/home/jovyan/work/src -p 8888:8888 dva:latest /bin/sh
```

While exec'd into the container, start jupyter notebook and other services:

```bash
bash /start.sh
```

# Accessing Jupyter Notebook

To access jupyter notebook from the host, go to `localhost:8888` on the browser.

# Data

Our project bootstraps itself from the following raw datasets. Follow the details below and make sure they are locally available before running the code.

All processed Twitter data is generated via the raw files. Place them under the `src/data/raw` directory. All the raw Tweets are retrievable on [IEEE Dataport](https://ieee-dataport.org/open-access/coronavirus-covid-19-geo-tagged-tweets-dataset#files).

The STS corpus for model training can be found [here](http://help.sentiment140.com/for-students). Place them under the `src/data/sts` directory.

# Pipeline Execution

The pipeline code is executed as Jupyter notebooks found in the `src/code` directory. The steps which they are executed is the number prefix in the filename. The order is as such:

1. [0_twitter_data_retrieval.ipynb](./src/code/0_twitter_data_retrieval.ipynb)
2. [1_Data_Preprocessing_Final.ipynb](./src/code/1_Data_Preprocessing_Final.ipynb)
3. [2-1_naive_bayes_training.ipynb](./src/code/2-1_naive_bayes_training.ipynb)
4. [2-2_evoMSA_training.ipynb](./src/code/2-2_evoMSA_training.ipynb)
5. [2-3_LDA_Final.ipynb](./src/code/2-3_LDA_Final.ipynb)
6. [3_aggregate_data_for_tableau.ipynb](.src/code/3_aggregate_data_for_tableau.ipynb)
