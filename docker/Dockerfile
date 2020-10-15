FROM continuumio/miniconda3

# Install Jupyter
RUN conda install -c anaconda jupyter

# Install nltk
RUN conda install -c anaconda nltk

# Install numpy
RUN conda install -c conda-forge numpy

# Install PySpark
RUN conda install -c conda-forge pyspark

# Install twarc
RUN pip install twarc

COPY ./start.sh /start.sh

CMD ["bin/bash"]
