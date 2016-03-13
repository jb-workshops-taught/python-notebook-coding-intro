FROM jupyter/datascience-notebook
# Provides a full-featured conda python, seaborn, and R notebook

MAINTAINER Jenny Brown <jennybrown8@gmail.com>

# Lesson files for Code for Anyone course
USER jovyan
COPY *.ipynb /home/jovyan/work/
COPY TechCrunch.csv /home/jovyan/work/
COPY README.md /home/jovyan/work/

