FROM jupyter/pyspark-notebook

# Install nltk
RUN pip install nltk

# Install pip libraries
RUN pip install autocorrect \
		demoji \
		gensim \
		tableschema \
		wordsegment \ 
 		twarc 

COPY ./start.sh /start.sh
