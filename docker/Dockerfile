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

#Install demoji
RUN pip install demoji

#Install wordsegment

RUN pip install wordsegment

RUN pip install autocorrect

RUN pip install gensim

COPY ./start.sh /start.sh

CMD ["bin/bash"]
