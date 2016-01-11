#FROM jupyter/minimal-notebook
FROM jupyter/datascience-notebook


MAINTAINER Jenny Brown <jennybrown8@gmail.com>

# Dependencies
#RUN pip install numpy
#RUN pip install scipy
#RUN pip install pandas
#RUN pip install matplotlib
#RUN pip install statsmodels
#RUN pip install seaborn

# Lesson files for Code for Anyone course
COPY *.ipynb /home/jovyan/work/
COPY TechCrunch.csv /home/jovyan/work/
COPY README.md /home/jovyan/work/

