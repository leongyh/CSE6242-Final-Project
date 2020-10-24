FROM jupyter/pyspark-notebook

# Install nltk
RUN pip install nltk

# Install pip libraries
RUN pip install twarc demoji wordsegment autocorrect gensim

COPY ./start.sh /start.sh
